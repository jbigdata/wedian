/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.wedian.site.modules.weixin.dao;

import com.wedian.site.common.persistence.CrudDao;
import com.wedian.site.common.persistence.annotation.MyBatisDao;
import com.wedian.site.modules.weixin.entity.WxGroup;

/**
 * 分组管理DAO接口
 * @author wanliang
 * @version 2015-07-27
 */
@MyBatisDao
public interface WxGroupDao extends CrudDao<WxGroup> {
	
}