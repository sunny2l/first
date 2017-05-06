package com.bdqn.service;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.beans.factory.annotation.Autowired;

import com.bdqn.comm.MyPage;
import com.bdqn.entity.Paper;
import com.bdqn.dao.PaperDao;

/**
 * 
 * 
 * @author Leslie
 */
// Spring Service Bean的标识.
@Component
public class PaperService {


	@Autowired
	private PaperDao paperDao;

	public Paper getById(Long id) {
		return paperDao.getById(id);
	}

	public Paper getByTitle(String title) {
		return paperDao.getByTitle(title);
	}

	
	public List<Paper> getAll() {
		return paperDao.getAll();
	}


	

	/**
	 * 分页查询
	 * 
	 * @param paper
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	public MyPage<Paper> searchPage(Paper paper, int currentPage, int pageSize) {
		MyPage<Paper> myPage = new MyPage<Paper>();

		Long count = paperDao.searchCount(paper);

		int pageStart = (currentPage - 1) < 0 ? 0 : (currentPage - 1) * pageSize;
		List<Paper> list = paperDao.searchPage(paper, pageStart, pageSize);

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
	public MyPage<Paper> searchByTitle(String key, int currentPage, int pageSize) {
		MyPage<Paper> myPage = new MyPage<Paper>();

		Long count = paperDao.countByTitle(key);

		int pageStart = (currentPage - 1) < 0 ? 0 : (currentPage - 1) * pageSize;
		List<Paper> list = paperDao.searchByTitle(key, pageStart, pageSize);

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
	public MyPage<Paper> searchByType(Long type, int currentPage, int pageSize) {
		MyPage<Paper> myPage = new MyPage<Paper>();

		Long count = paperDao.countByType(type);

		int pageStart = (currentPage - 1) < 0 ? 0 : (currentPage - 1) * pageSize;
		List<Paper> list = paperDao.searchByType(type, pageStart, pageSize);

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
	public void save(Paper paper) {
		paperDao.save(paper);
	}

	public void update(Paper paper) {
		paperDao.update(paper);
	}

	/**
	 * 软删除
	 */
	public void delete(Long id) {
		paperDao.delete(id);
	}
}
