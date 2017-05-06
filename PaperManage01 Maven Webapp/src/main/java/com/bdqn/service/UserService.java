package com.bdqn.service;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.beans.factory.annotation.Autowired;

import com.bdqn.comm.MyPage;
import com.bdqn.entity.User;
import com.bdqn.dao.UserDao;

/**
 * 
 * 
 * @author Leslie
 */
// Spring Service Bean的标识.
@Component
public class UserService {


	@Autowired
	private UserDao userDao;

	public User getById(int id) {
		return userDao.getById(id);
	}
	public User getByUsername(String username) {
		return userDao.getByUsername(username);
	}
	public List<User> getAll() {
		return userDao.getAll();
	}

	/**
	 * 分页查询
	 * 
	 * @param user
	 * @param currentPage
	 * @param pageSize
	 * @return
	 */
	public MyPage<User> searchPage(User user, int currentPage, int pageSize) {
		MyPage<User> myPage = new MyPage<User>();

		Long count = userDao.searchCount(user);

		int pageStart = (currentPage - 1) < 0 ? 0 : (currentPage - 1) * pageSize;
		List<User> list = userDao.searchPage(user, pageStart, pageSize);

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

	public void save(User user) {
		userDao.save(user);
	}

	public void update(User user) {
		userDao.update(user);
	}

	/**
	 * 软删除
	 */
	public void delete(Long id) {
		userDao.delete(id);
	}
}
