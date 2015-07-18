package com.wedian.site.modules.cms.web.front;

import com.google.common.collect.Lists;
import com.wedian.site.common.config.Global;
import com.wedian.site.common.utils.StringUtils;
import com.wedian.site.common.web.BaseController;
import com.wedian.site.modules.sys.entity.Office;
import com.wedian.site.modules.sys.entity.Role;
import com.wedian.site.modules.sys.entity.User;
import com.wedian.site.modules.sys.service.SystemService;
import com.wedian.site.modules.sys.utils.UserUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by wanliang_mvp on 2015/7/17.
 */
@Controller
public class RegController extends BaseController{

    @Autowired
    private SystemService systemService;

    @RequestMapping(value="/reg",method = RequestMethod.GET)
    public String reg(ModelMap model){

        return "reg.ftl";
    }

    @RequestMapping(value="/reg",method = RequestMethod.POST)
    public String regSave(User user, HttpServletRequest request, ModelMap model, RedirectAttributes redirectAttributes) {

        // 修正引用赋值问题，不知道为何，Company和Office引用的一个实例地址，修改了一个，另外一个跟着修改。
       // user.setCompany(new Office(request.getParameter("company.id")));
      //  user.setOffice(new Office(request.getParameter("office.id")));
        // 如果新密码为空，则不更换密码
        if (StringUtils.isNotBlank(user.getNewPassword())) {
            user.setPassword(SystemService.entryptPassword(user.getNewPassword()));
        }
//        if (!beanValidator(model, user)){
//            return form(user, model);
//        }
        if (!"true".equals(checkLoginName(user.getOldLoginName(), user.getLoginName()))){
         //   addMessage(model, "保存用户'" + user.getLoginName() + "'失败，登录名已存在");

            return form(user, model);
        }
        // 角色数据有效性验证，过滤不在授权内的角色
        List<Role> roleList = Lists.newArrayList();
        List<String> roleIdList = user.getRoleIdList();
        for (Role r : systemService.findAllRole()){
            if (roleIdList.contains(r.getId())){
                roleList.add(r);
            }
        }
        user.setRoleList(roleList);
        // 保存用户信息
        systemService.saveUser(user);
        // 清除当前用户缓存
        if (user.getLoginName().equals(UserUtils.getUser().getLoginName())){
            UserUtils.clearCache();
            //UserUtils.getCacheMap().clear();
        }
        addMessage(redirectAttributes, "保存用户'" + user.getLoginName() + "'成功");
        return "redirect:" + adminPath + "/sys/user/list?repage";
    }


    /**
     * 验证登录名是否有效
     * @param oldLoginName
     * @param loginName
     * @return
     */
    @ResponseBody
    @RequiresPermissions("sys:user:edit")
    @RequestMapping(value = "checkLoginName")
    public String checkLoginName(String oldLoginName, String loginName) {
        if (loginName !=null && loginName.equals(oldLoginName)) {
            return "true";
        } else if (loginName !=null && systemService.getUserByLoginName(loginName) == null) {
            return "true";
        }

    }
