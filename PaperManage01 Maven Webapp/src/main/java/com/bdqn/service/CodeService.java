package com.bdqn.service;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.beans.factory.annotation.Autowired;

import com.bdqn.comm.MyPage;
import com.bdqn.entity.Code;
import com.bdqn.dao.CodeDao;

/**
 * 
 * 
 * @author Leslie
 */
// Spring Service Bean的标识.
@Component
public class CodeService {


	@Autowired
	private CodeDao codeDao;

	public Code getById(Long id) {
		return codeDao.getById(id);
	}

	public Code getByCode(Long code) {
		return codeDao.getByCode(code);
	}
	
	public List<Code> getAll() {
		return codeDao.getAll();
	}

	public List<Code> getByType(String type) {
		return codeDao.getByType(type);
	}
	/**
	 * 分页查询
	 * 
	 * @param code
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	public MyPage<Code> searchPage(Code code, int currentPage, int pageSize) {
		MyPage<Code> myPage = new MyPage<Code>();

		Long count = codeDao.searchCount(code);

		int pageStart = (currentPage - 1) < 0 ? 0 : (currentPage - 1) * pageSize;
		List<Code> list = codeDao.searchPage(code, pageStart, pageSize);

		int pages;
		if (count % pageSize == 0) {
		pages = new Long(count).intValue() / new Long(pageSize).intValue();
		} else {
			pages = new Long(count).intValue() / new Long(pageSize).intValue() + 1;
		}

		myPage.setSumPage(pages);
		myPage.setCurrentPage(new Long(currentPage));
		myPage.setCount(count);
		myPage.setContent(list);

		return myPage;
	}

	public void save(Code code) {
		codeDao.save(code);
	}

	public void update(Code code) {
		codeDao.update(code);
	}

	/**
	 * 软删除
	 */
	public void delete(Long id) {
		codeDao.delete(id);
	}
}
