/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.wedian.site.modules.act.dao;

import com.wedian.site.common.persistence.CrudDao;
import com.wedian.site.common.persistence.annotation.MyBatisDao;
import com.wedian.site.modules.act.entity.Act;
import com.wedian.site.common.persistence.CrudDao;
import com.wedian.site.common.persistence.annotation.MyBatisDao;
import com.wedian.site.modules.act.entity.Act;

/**
 * 审批DAO接口
 * @author thinkgem
 * @version 2014-05-16
 */
@MyBatisDao
public interface ActDao extends CrudDao<Act> {

	public int updateProcInsIdByBusinessId(Act act);
	
}
