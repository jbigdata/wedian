package com.wedian.site.modules.cms.web;

import com.wedian.site.common.mapper.JsonMapper;
import com.wedian.site.common.web.BaseController;
import com.wedian.site.modules.sys.entity.User;
import com.wedian.site.modules.sys.utils.UserUtils;
import com.wedian.site.common.web.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2015/5/12.
 */
@Controller
public class IndexController extends BaseController {
    @RequestMapping(value="/index",method = RequestMethod.GET)
    public String index(ModelMap model){
        User currentUser = UserUtils.getUser();
        System.out.println("index----------------------"+ JsonMapper.toJsonString(currentUser));
        model.addAttribute("user", currentUser);
        return "index.ftl";
    }
}
