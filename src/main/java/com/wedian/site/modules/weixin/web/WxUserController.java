package com.wedian.site.modules.weixin.web;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.wedian.site.common.config.Global;
import com.wedian.site.common.web.BaseController;
import com.wedian.site.common.web.HttpClientUtils;
import com.wedian.site.modules.weixin.entity.WxGroup;
import com.wedian.site.modules.weixin.entity.Token;
import com.wedian.site.modules.weixin.entity.WxUser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
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
        List<WxGroup>  groupList=JSON.parseArray(JSON.parseObject(groupStr).getString("groups"),WxGroup.class);
        logger.debug("groupList:"+JSON.parseObject(groupStr).getString("groups"));
        model.addAttribute("groups", groupList);
        return "weixin/user/index.ftl";
    }

    @RequestMapping(value = "/user/{groupId}", method = RequestMethod.GET)
    @ResponseBody
    public Object getUsers(@PathVariable("groupId")String groupId, ModelMap model) {
        String tokenJson = HttpClientUtils.get(Global.getWeixinUrl() + "token?grant_type=client_credential&appid=wx28498fc8e188a035&secret=3058bfb4f7751bfeff1d2a5d810a5412");
        logger.debug("tokenJson:"+tokenJson);
        Token token=JSON.parseObject(tokenJson, Token.class);

        String usersStr = HttpClientUtils.get(Global.getWeixinUrl() + "user/get?access_token={0}", new Object[]{token.getAccess_token()});
        logger.debug("userStr:"+usersStr);
        JSONObject userJson=JSON.parseObject(usersStr);
        HashMap<String,Object> resultMap=new HashMap<String, Object>();
        resultMap.put("total",userJson.get("total"));
        resultMap.put("count",userJson.get("count"));
        resultMap.put("next_openid",userJson.get("next_openid"));
        JSONArray openidArr=userJson.getJSONObject("data").getJSONArray("openid");
        List<WxUser> userList=new ArrayList<WxUser>();
        for(int i=0;i<openidArr.size();i++) {
            String userStr = HttpClientUtils.get(Global.getWeixinUrl() + "user/info?access_token={0}&openid={1}&lang=zh_CN", new Object[]{token.getAccess_token(),openidArr.get(i)});
            WxUser user=JSON.parseObject(userStr, WxUser.class);
            userList.add(user);
        }
        resultMap.put("data",userList);
        return resultMap;
    }


}
