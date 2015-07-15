/*
 * Copyright 2005-2013 shopxx.net. All rights reserved.
 * Support: http://www.shopxx.net
 * License: http://www.shopxx.net/license
 */
package com.wedian.site.common.utils;

/**
 * 公共参数
 * 
 * @author wanliang Team
 * @version 3.0
 */
public final class CommonAttributes {

	/** 日期格式配比 */
	public static final String[] DATE_PATTERNS = new String[] { "yyyy", "yyyy-MM", "yyyyMM", "yyyy/MM", "yyyy-MM-dd", "yyyyMMdd", "yyyy/MM/dd", "yyyy-MM-dd HH:mm:ss", "yyyyMMddHHmmss", "yyyy/MM/dd HH:mm:ss" };

	/** small.xml文件路径 */
	public static final String SITE_XML_PATH = "/jeesite.xml";

	/** application.properties文件路径 */
	public static final String SITE_PROPERTIES_PATH = "/jeesite.properties";

	/**
	 * 不可实例化
	 */
	private CommonAttributes() {
	}

}