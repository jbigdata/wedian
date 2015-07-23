/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.wedian.site.modules.weixin.entity;

import com.google.common.collect.Lists;
import com.wedian.site.common.persistence.DataEntity;
import com.wedian.site.modules.cms.entity.ArticleData;
import com.wedian.site.modules.cms.entity.Category;
import com.wedian.site.modules.cms.utils.CmsUtils;
import org.apache.commons.lang3.StringUtils;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.NotNull;
import java.util.Date;
import java.util.List;

/**
 * 公众号信息
 * @author wanliang
 * @version 2013-05-15
 */
public class User extends DataEntity<User> {

    public static final String DEFAULT_TEMPLATE = "frontViewArticle";

	private static final long serialVersionUID = 1L;
	private String email;	// 邮箱地址
    private String appid;	// appid
	private String secret;	// appKey
	private String grantType;	//类型
	private String phone;// 手机号
	private String name;// 信息
	private String password;


	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAppid() {
		return appid;
	}

	public void setAppid(String appid) {
		this.appid = appid;
	}

	public String getSecret() {
		return secret;
	}

	public void setSecret(String secret) {
		this.secret = secret;
	}

	public String getGrantType() {
		return grantType;
	}

	public void setGrantType(String grantType) {
		this.grantType = grantType;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}


