package com.bdqn.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.text.SimpleDateFormat;
import java.util.Date;
import com.bdqn.entity.Code;
import com.bdqn.service.CodeService;

@Controller
@RequestMapping(value = "/code")
public class CodeController {

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

	@Autowired
	private CodeService codeService;

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String codelist(Model model) {

		model.addAttribute("list", codeService.getAll());

		return "code/codeList";
	}

	// 跳转到更新页面
	@RequestMapping(value = "update/{id}", method = RequestMethod.GET)
	public String updateForm(@PathVariable("id") Long id, Model model) {
		model.addAttribute("code", codeService.getById(id));
		return "code/codeForm";
	}

	// 更新保存
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String updateSave(@Valid @ModelAttribute("code") Code code, RedirectAttributes redirectAttributes) {
		codeService.update(code);
		redirectAttributes.addFlashAttribute("message", "操作成功");
		return "redirect:/code/codeList";
	}
	
	// 删除
	@RequestMapping(value = "delete/{id}")
	public String delete(@PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
		codeService.delete(id);
		redirectAttributes.addFlashAttribute("message", "删除成功");
		return "redirect:/code/codeList";
	}
	
}
