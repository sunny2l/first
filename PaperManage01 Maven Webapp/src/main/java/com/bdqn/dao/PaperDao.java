package com.bdqn.dao;

import com.bdqn.entity.Paper;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface PaperDao {
   Paper getById(Long id);
   
   Paper getByTitle(String title);

	Paper findByLoginName(String logingName);
	
	List<Paper> getAll();
	
	/**
	 * 分页查询
	 * @param paper
	 * @param pageStart
	 * @param pageSize
	 * @return
	 */
	List<Paper> searchPage(@Param("paper")Paper paper,@Param("pageStart")int pageStart,@Param("pageSize")int pageSize);
	List<Paper> searchByTitle(@Param("key")String key,@Param("pageStart")int pageStart,@Param("pageSize")int pageSize);
	List<Paper> searchByType(@Param("type")Long type,@Param("pageStart")int pageStart,@Param("pageSize")int pageSize);
	/**
	 * 分页查询总记录数
	 * @param paper
	 * @return
	 */
	Long searchCount(Paper paper);
	
	Long countByTitle(@Param("key")String key);
	
	Long countByType(@Param("type")Long type);
	
	void save(Paper paper);
	
	void update(Paper paper);
	
	/**
	 * 软删除
	 */
	void delete(Long id);
	
}