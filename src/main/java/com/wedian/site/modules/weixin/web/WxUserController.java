package com.wedian.site.modules.weixin.web;

import com.alibaba.fastjson.JSON;
import com.wedian.site.common.config.Global;
import com.wedian.site.common.mapper.JsonMapper;
import com.wedian.site.common.web.BaseController;
import com.wedian.site.common.web.HttpClientUtils;
import com.wedian.site.modules.sys.entity.User;
import com.wedian.site.modules.sys.utils.UserUtils;
import com.wedian.site.modules.weixin.entity.Group;
import com.wedian.site.modules.weixin.entity.Token;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by Administrator on 2015/7/23.
 */
@Controller
@RequestMapping("/weixin")
public class WxUserController extends BaseController {


    @RequestMapping(value = "/user/index", method = RequestMethod.GET)
    public String group(ModelMap model) {
        String tokenJson = HttpClientUtils.get(Global.getWeixinUrl() + "token?grant_type=client_credential&appid=wx28498fc8e188a035&secret=3058bfb4f7751bfeff1d2a5d810a5412");
        logger.debug("tokenJson:"+tokenJson);
        Token token=JSON.parseObject(tokenJson, Token.class);

        String groupStr = HttpClientUtils.get(Global.getWeixinUrl() + "groups/get?access_token={0}", new Object[]{token.getAccess_token()});
        logger.debug("groupStr:"+groupStr);
        List<Group>  groupList=JSON.parseArray(JSON.parseObject(groupStr).getString("groups"),Group.class);
        logger.debug("groupList:"+JSON.parseObject(groupStr).getString("groups"));
        model.addAttribute("groups", groupList);
        return "weixin/user/index.ftl";
    }


}
