package com.thinkgem.jeesite.modules.cms.web;

import com.thinkgem.jeesite.common.mapper.JsonMapper;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.sys.entity.User;
import com.thinkgem.jeesite.modules.sys.utils.UserUtils;
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
