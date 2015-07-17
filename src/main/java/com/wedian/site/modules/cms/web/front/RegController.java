package com.wedian.site.modules.cms.web.front;

import com.wedian.site.common.web.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by wanliang_mvp on 2015/7/17.
 */
@Controller
public class RegController extends BaseController{

    @RequestMapping(value="/reg",method = RequestMethod.GET)
    public String login(ModelMap model){
        System.out.println("login----------------------");

        return "reg.ftl";
    }
}
