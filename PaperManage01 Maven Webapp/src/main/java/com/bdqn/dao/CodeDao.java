package com.bdqn.dao;

import com.bdqn.entity.Code;
import java.util.List;
import org.apache.ibatis.annotations.Param;
public interface CodeDao {
   Code getById(Long id);
   Code getByCode(Long code);
   
	Code findByLoginName(String logingName);
	
	List<Code> getAll();
	
	List<Code> getByType(String type);
	/**
	 * 分页查询
	 * @param code
	 * @param pageStart
	 * @param pageSize
	 * @return
	 */
	List<Code> searchPage(@Param("code")Code code,@Param("pageStart")int pageStart,@Param("pageSize")int pageSize);
	
	/**
	 * 分页查询总记录数
	 * @param code
	 * @return
	 */
	Long searchCount(Code code);
	
	void save(Code code);
	
	void update(Code code);
	
	/**
	 * 软删除
	 */
	void delete(Long id);
	

}
