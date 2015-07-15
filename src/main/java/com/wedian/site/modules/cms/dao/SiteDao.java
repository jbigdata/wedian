/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.wedian.site.modules.cms.dao;

import com.wedian.site.common.persistence.CrudDao;
import com.wedian.site.common.persistence.annotation.MyBatisDao;
import com.wedian.site.modules.cms.entity.Site;
import com.wedian.site.common.persistence.annotation.MyBatisDao;

/**
 * 站点DAO接口
 * @author ThinkGem
 * @version 2013-8-23
 */
@MyBatisDao
public interface SiteDao extends CrudDao<Site> {

}
