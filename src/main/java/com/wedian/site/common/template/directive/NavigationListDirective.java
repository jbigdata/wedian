package com.wedian.site.common.template.directive;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import com.wedian.site.common.mapper.JsonMapper;
import com.wedian.site.modules.cms.entity.Category;
import com.wedian.site.modules.cms.service.CategoryService;
import com.wedian.site.modules.cms.service.CommentService;
import com.wedian.site.modules.cms.service.LinkService;
import com.wedian.site.modules.cms.utils.CmsUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import freemarker.core.Environment;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/**
 * 模板指令 - 导航列表
 * 
 * @author wanliang Team
 * @version 3.0
 */
@Component("navigationListDirective")
public class NavigationListDirective extends BaseDirective {

	/** 变量名称 */
	private static final String VARIABLE_NAME = "navigations";

    @Autowired
    private LinkService linkService;
    @Autowired
    private CommentService commentService;
    @Autowired
    private CategoryService categoryService;

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public void execute(Environment env, Map params, TemplateModel[] loopVars, TemplateDirectiveBody body) throws TemplateException, IOException {
		boolean useCache = useCache(env, params);
		String cacheRegion = getCacheRegion(env, params);
		Integer count = getCount(params);
        // 否则显示子站第一个栏目
        List<Category> mainNavList = CmsUtils.getMainNavList("1");
        System.out.println(JsonMapper.toJsonString(mainNavList));
        setLocalVariable(VARIABLE_NAME, mainNavList, env, body);
	}

}