/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.wedian.site.modules.gen.dao;

import com.wedian.site.common.persistence.CrudDao;
import com.wedian.site.common.persistence.annotation.MyBatisDao;
import com.wedian.site.modules.gen.entity.GenTableColumn;
import com.wedian.site.common.persistence.CrudDao;
import com.wedian.site.common.persistence.annotation.MyBatisDao;

/**
 * 业务表字段DAO接口
 * @author ThinkGem
 * @version 2013-10-15
 */
@MyBatisDao
public interface GenTableColumnDao extends CrudDao<GenTableColumn> {
	
	public void deleteByGenTableId(String genTableId);
}
