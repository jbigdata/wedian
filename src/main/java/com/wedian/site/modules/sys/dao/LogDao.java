/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.wedian.site.modules.sys.dao;

import com.wedian.site.common.persistence.CrudDao;
import com.wedian.site.common.persistence.annotation.MyBatisDao;
import com.wedian.site.modules.sys.entity.Log;
import com.wedian.site.common.persistence.annotation.MyBatisDao;

/**
 * 日志DAO接口
 * @author ThinkGem
 * @version 2014-05-16
 */
@MyBatisDao
public interface LogDao extends CrudDao<Log> {

}
