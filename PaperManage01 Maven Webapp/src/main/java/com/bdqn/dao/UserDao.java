package com.bdqn.dao;

import com.bdqn.entity.User;
import java.util.List;
import org.apache.ibatis.annotations.Param;
public interface UserDao {
   User getById(int id);

	User findByLoginName(String logingName);
	User getByUsername(String username);
	List<User> getAll();
	
	/**
	 * 分页查询
	 * @param user
	 * @param pageStart
	 * @param pageSize
	 * @return
	 */
	List<User> searchPage(@Param("user")User user,@Param("pageStart")int pageStart,@Param("pageSize")int pageSize);
	
	/**
	 * 分页查询总记录数
	 * @param user
	 * @return
	 */
	Long searchCount(User user);
	
	void save(User user);
	
	void update(User user);
	
	/**
	 * 软删除
	 */
	void delete(Long id);
	

}
