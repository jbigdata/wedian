package com.wedian.site.modules.weixin.web;

import com.wedian.site.common.config.Global;
import com.wedian.site.common.mapper.JsonMapper;
import com.wedian.site.common.web.BaseController;
import com.wedian.site.common.web.HttpClientUtils;
import com.wedian.site.modules.sys.entity.User;
import com.wedian.site.modules.sys.utils.UserUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Administrator on 2015/7/23.
 */
@Controller
@RequestMapping("/wexin")
public class WxUserController extends BaseController {


    @RequestMapping(value = "/groups", method = RequestMethod.GET)
    public String group(ModelMap model) {

        String resultStr = HttpClientUtils.get(Global.getWeixinUrl() + "/groups/get?access_toke={0}", new Object[]{"qRwcUWUkH-Un8zhyeWStHjCVtA_uH6nZ956JKZb3qMEvKrXi_r0FoYgOaK_OmFDGXD9gA_jklfMscpvr795HLvbid2787pEMhdocIGa451o"});
      //  JsonMapper.fromJsonString()
        return "weixin/group.ftl";
    }


}
