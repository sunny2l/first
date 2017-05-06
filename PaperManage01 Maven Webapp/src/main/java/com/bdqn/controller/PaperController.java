package com.bdqn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.io.File;
import java.io.IOException;
import com.bdqn.entity.Paper;
import com.bdqn.comm.MyPage;
import com.bdqn.service.PaperService;
import com.bdqn.service.CodeService;
import com.bdqn.util.NoteResult;

/**
 * 
 * @author Leslie
 */
@Controller
@RequestMapping(value = "/paper")
public class PaperController {

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				dateFormat, true));
	}

	@Autowired
	private PaperService paperService;
	@Autowired
	private CodeService codeService;
	private String baseImageDir = "d:";

	@RequestMapping(value = "list/page/{pagenum}", method = RequestMethod.GET)
	public String paperlist(Model model, @PathVariable String pagenum) {
		MyPage<Paper> paperMyPage = paperService.searchPage(new Paper(),
				Integer.parseInt(pagenum), 5);
		model.addAttribute("myPage", paperMyPage);
		model.addAttribute("typeList", codeService.getByType("paperType"));
		return "paperList";
	}

	// 根据title模糊查询
	@RequestMapping(value = "searchByTitle/page/{pagenum}", method = RequestMethod.GET)
	public String searchByTitle(@Valid @ModelAttribute("key") String key,
			Model model, @PathVariable String pagenum) {
		MyPage<Paper> paperMyPage = paperService.searchByTitle(key,
				Integer.parseInt(pagenum), 5);
		model.addAttribute("myPage", paperMyPage);
		model.addAttribute("typeList", codeService.getByType("paperType"));
		return "paperList";
	}

	// 根据title模糊查询
	@RequestMapping(value = "searchByType/page/{pagenum}", method = RequestMethod.GET)
	public String searchByType(@Valid @ModelAttribute("type") Long type,
			Model model, @PathVariable String pagenum) {
		MyPage<Paper> paperMyPage = paperService.searchByType(type,
				Integer.parseInt(pagenum), 5);
		model.addAttribute("myPage", paperMyPage);
		model.addAttribute("typeList", codeService.getByType("paperType"));
		return "paperList";
	}

	// 跳转到更新页面
	@RequestMapping(value = "update/{id}/{pagenum}", method = RequestMethod.GET)
	public String updateForm(@PathVariable("id") Long id,
			@PathVariable("pagenum") Long pagenum, Model model) {
		Paper paper = paperService.getById(id);
		model.addAttribute("paper", paper);
		model.addAttribute("pagenum", pagenum);
		model.addAttribute("typeList", codeService.getByType("paperType"));
		model.addAttribute("typename", codeService.getByCode(paper.getType())
				.getCodename());
		return "paperForm";
	}

	// 更新保存
	@RequestMapping(value = "update/{pagenum}", method = RequestMethod.POST)
	public String updateSave(@Valid @ModelAttribute("paper") Paper paper,
			@PathVariable String pagenum, RedirectAttributes redirectAttributes) {
		paper.setModifydate(new Date());
		paperService.update(paper);
		redirectAttributes.addFlashAttribute("message", "操作成功");
		return "redirect:/paper/list/page/" + pagenum;

	}

	@RequestMapping(value = "create", method = RequestMethod.GET)
	public String createForm(Model model) {
		model.addAttribute("typeList", codeService.getByType("paperType"));
		return "paperAddForm";
	}

	// 上传论文
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String addForm(@Valid @ModelAttribute("paper") Paper paper,
			@RequestParam("file") MultipartFile file,
			RedirectAttributes redirectAttributes) throws IOException {
		paper.setCreationdate(new Date());
		paperService.save(paper);
		upload(file, paper.getId());
		redirectAttributes.addFlashAttribute("message", "操作成功");
		return "homePage";
	}

	// 上传论文
	@RequestMapping(value = "isExist", method = RequestMethod.POST)
	@ResponseBody
	public Object isExist(@RequestParam("title") String title, Model model) {
		Paper paper = paperService.getByTitle(title);
		if (paper != null) {
			return "Exist";
		} else
			return "notExist";
	}

	/**
	 * 上传图片
	 **/
	@RequestMapping(value = "upload/{id}", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public NoteResult upload(@RequestParam("file") MultipartFile file,
			@PathVariable(value = "id") Long id) throws IOException {
		if (!file.isEmpty()) {
			String fileName = file.getOriginalFilename();
			try {
				String tempUrl = baseImageDir + "/" + "paper/" + id + "/";
				String filePath = tempUrl + fileName;
				File saveFile = new File(filePath);
				if (!saveFile.exists()) {
					saveFile.mkdirs();
				}
				// 转存文件
				file.transferTo(saveFile);
				Paper paper = paperService.getById(id);
				paper.setPaperpath(filePath);
				paper.setFilename(fileName);
				paperService.update(paper);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		NoteResult result = new NoteResult();
		result.setMsg("上传成功");
		result.setStatus(0);
		return result;
	}

	// 删除
	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable("id") Long id,
			RedirectAttributes redirectAttributes) {
		paperService.delete(id);
		redirectAttributes.addFlashAttribute("message", "删除成功");
		return "redirect:/paper/paperList";
	}

}
