/**
 * Copyright &copy; 2012-2014 <a href=https://github.com/thinkgem/jeesite>JeeSite</a> All rights reserved.
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
import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * 公众号信息
 *
 * @author wanliang
 * @version 2013-05-15
 */
public class User implements Serializable {

    private static final long serialVersionUID = 1L;
    private String email;    // 邮箱地址
    private String appid;    // appid
    private String secret;    // appKey
    private String grantType;    //类型
    private String phone;// 手机号
    private String name;// 信息
    private String password;
    private String subscribe;
    private String openid;
    private String nickname;
    private String sex;
    private String language;
    private String city;
    private String province;
    private String country;
    private String headimgurl;
    private String subscribe_time;
    private String unionid;
    private String remark;
    private String groupid;

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

    public String getGroupid() {
        return groupid;
    }

    public void setGroupid(String groupid) {
        this.groupid = groupid;
    }

    public String getSubscribe() {
        return subscribe;
    }

    public void setSubscribe(String subscribe) {
        this.subscribe = subscribe;
    }

    public String getOpenid() {
        return openid;
    }

    public void setOpenid(String openid) {
        this.openid = openid;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getHeadimgurl() {
        return headimgurl;
    }

    public void setHeadimgurl(String headimgurl) {
        this.headimgurl = headimgurl;
    }

    public String getSubscribe_time() {
        return subscribe_time;
    }

    public void setSubscribe_time(String subscribe_time) {
        this.subscribe_time = subscribe_time;
    }

    public String getUnionid() {
        return unionid;
    }

    public void setUnionid(String unionid) {
        this.unionid = unionid;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}


