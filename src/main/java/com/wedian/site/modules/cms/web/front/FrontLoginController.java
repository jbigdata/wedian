package com.wedian.site.modules.cms.web.front;

import com.google.common.collect.Maps;
import com.wedian.site.common.security.shiro.session.SessionDAO;
import com.wedian.site.common.servlet.ValidateCodeServlet;
import com.wedian.site.common.utils.CacheUtils;
import com.wedian.site.common.utils.IdGen;
import com.wedian.site.common.utils.StringUtils;
import com.wedian.site.common.web.BaseController;
import com.wedian.site.modules.sys.security.FormAuthenticationFilter;
import com.wedian.site.modules.sys.security.SystemAuthorizingRealm;
import com.wedian.site.modules.sys.utils.UserUtils;
import com.wedian.site.common.security.shiro.session.SessionDAO;
import com.wedian.site.common.web.BaseController;
import org.apache.shiro.authz.UnauthorizedException;
import org.apache.shiro.web.util.WebUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * Created by wanliang_mvp on 2015/7/11.
 */
@Controller
public class FrontLoginController extends BaseController {

    @Autowired
    private SessionDAO sessionDAO;

    @RequestMapping(value="/login",method = RequestMethod.GET)
    public String login(ModelMap model){
        System.out.println("login----------------------");

        return "login.ftl";
    }

}
