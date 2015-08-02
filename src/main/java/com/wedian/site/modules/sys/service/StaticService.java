/*
 * Copyright 2005-2013 shopxx.net. All rights reserved.
 * Support: http://www.shopxx.net
 * License: http://www.shopxx.net/license
 */
package com.wedian.site.modules.sys.service;


import com.wedian.site.common.config.Template;
import com.wedian.site.modules.cms.entity.Article;
import com.wedian.site.modules.cms.entity.Article;
import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import java.io.*;
import java.util.Map;


/**
 * Service - 静态化
 * 
 * @author wanliang
 * @version 3.0
 */
//@Service("staticService")
public class StaticService {
	/** Sitemap最大地址数 */
	private static final Integer SITEMAP_MAX_SIZE = 40000;

	/** servletContext */
	private ServletContext servletContext;

	@Resource
	private FreeMarkerConfigurer freeMarkerConfigurer;

	@Resource
	private TemplateService templateService;


	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
	}

	@Transactional(readOnly = true)
	public int build(String templatePath, String staticPath, Map<String, Object> model) {
		Assert.hasText(templatePath);
		Assert.hasText(staticPath);

		FileOutputStream fileOutputStream = null;
		OutputStreamWriter outputStreamWriter = null;
		Writer writer = null;
		try {
			freemarker.template.Template template = freeMarkerConfigurer.getConfiguration().getTemplate(templatePath);
			File staticFile = new File(servletContext.getRealPath(staticPath));
			File staticDirectory = staticFile.getParentFile();
			if (!staticDirectory.exists()) {
				staticDirectory.mkdirs();
			}
			fileOutputStream = new FileOutputStream(staticFile);
			outputStreamWriter = new OutputStreamWriter(fileOutputStream, "UTF-8");
			writer = new BufferedWriter(outputStreamWriter);
			template.process(model, writer);
			writer.flush();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			IOUtils.closeQuietly(writer);
			IOUtils.closeQuietly(outputStreamWriter);
			IOUtils.closeQuietly(fileOutputStream);
		}
		return 0;
	}

	@Transactional(readOnly = true)
	public int build(String templatePath, String staticPath) {
		return build(templatePath, staticPath, null);
	}

	@Transactional(readOnly = true)
	public int build(Article article) {
		Assert.notNull(article);

		delete(article);
		Template template = templateService.get("articleContent");
		int buildCount = 0;
//		if (article.getIsPublication()) {
//			Map<String, Object> model = new HashMap<String, Object>();
//			model.put("article", article);
////			for (int pageNumber = 1; pageNumber <= article.getTotalPages(); pageNumber++) {
////				article.setPageNumber(pageNumber);
////				buildCount += build(template.getTemplatePath(), article.getPath(), model);
////			}
//			article.setPageNumber(null);
//		}
		return buildCount;
	}
//
//	@Transactional(readOnly = true)
//	public int build(Product product) {
//		Assert.notNull(product);
//
//		delete(product);
//		Template template = templateService.get("productContent");
//		int buildCount = 0;
////		if (product.getIsMarketable()) {
////			Map<String, Object> model = new HashMap<String, Object>();
////			model.put("product", product);
////			buildCount += build(template.getTemplatePath(), product.getPath(), model);
////		}
//		return buildCount;
//	}

	@Transactional(readOnly = true)
	public int buildIndex() {
		Template template = templateService.get("index");
		return build(template.getTemplatePath(), template.getStaticPath());
	}


	public int buildSitemap() {
		return 0;
	}

	public int buildOther() {
		return 0;
	}

	public int buildAll() {
		return 0;
	}
//
//	@Transactional(readOnly = true)
//	public int buildSitemap() {
//		int buildCount = 0;
//		Template sitemapIndexTemplate = templateService.get("sitemapIndex");
//		Template sitemapTemplate = templateService.get("sitemap");
//		Map<String, Object> model = new HashMap<String, Object>();
//		List<String> staticPaths = new ArrayList<String>();
//		for (int step = 0, index = 0, first = 0, count = SITEMAP_MAX_SIZE;;) {
//			try {
//				model.put("index", index);
//				String templatePath = sitemapTemplate.getTemplatePath();
//				String staticPath = FreemarkerUtils.process(sitemapTemplate.getStaticPath(), model);
//				if (step == 0) {
//					List<Article> articles = articleService.findList(first, count, null, null);
//					model.put("articles", articles);
//					if (articles.size() < count) {
//						step++;
//						first = 0;
//						count -= articles.size();
//					} else {
//						buildCount += build(templatePath, staticPath, model);
//						staticPaths.add(staticPath);
//						model.clear();
//						index++;
//						first += articles.size();
//						count = SITEMAP_MAX_SIZE;
//					}
//				} else if (step == 1) {
//					List<Product> products = productService.findList(first, count, null, null);
//					model.put("products", products);
//					if (products.size() < count) {
//						step++;
//						first = 0;
//						count -= products.size();
//					} else {
//						buildCount += build(templatePath, staticPath, model);
//						staticPaths.add(staticPath);
//						model.clear();
//						index++;
//						first += products.size();
//						count = SITEMAP_MAX_SIZE;
//					}
//				} else if (step == 2) {
//					List<Brand> brands = brandService.findList(first, count, null, null);
//					model.put("brands", brands);
//					if (brands.size() < count) {
//						step++;
//						first = 0;
//						count -= brands.size();
//					} else {
//						buildCount += build(templatePath, staticPath, model);
//						staticPaths.add(staticPath);
//						model.clear();
//						index++;
//						first += brands.size();
//						count = SITEMAP_MAX_SIZE;
//					}
//				} else if (step == 3) {
//					List<Promotion> promotions = promotionService.findList(first, count, null, null);
//					model.put("promotions", promotions);
//					buildCount += build(templatePath, staticPath, model);
//					staticPaths.add(staticPath);
//					if (promotions.size() < count) {
//						model.put("staticPaths", staticPaths);
//						buildCount += build(sitemapIndexTemplate.getTemplatePath(), sitemapIndexTemplate.getStaticPath(), model);
//						break;
//					} else {
//						model.clear();
//						index++;
//						first += promotions.size();
//						count = SITEMAP_MAX_SIZE;
//					}
//				}
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//		}
//		return buildCount;
//	}
//
//	@Transactional(readOnly = true)
//	public int buildOther() {
//		int buildCount = 0;
//		Template shopCommonJsTemplate = templateService.get("shopCommonJs");
//		Template adminCommonJsTemplate = templateService.get("adminCommonJs");
//		buildCount += build(shopCommonJsTemplate.getTemplatePath(), shopCommonJsTemplate.getStaticPath());
//		buildCount += build(adminCommonJsTemplate.getTemplatePath(), adminCommonJsTemplate.getStaticPath());
//		return buildCount;
//	}
//
//	@Transactional(readOnly = true)
//	public int buildAll() {
//		int buildCount = 0;
//		for (int i = 0; i < articleService.count(); i += 20) {
//			List<Article> articles = articleService.findList(i, 20, null, null);
//			for (Article article : articles) {
//				buildCount += build(article);
//			}
//		}
//		for (int i = 0; i < productService.count(); i += 20) {
//			List<Product> products = productService.findList(i, 20, null, null);
//			for (Product product : products) {
//				buildCount += build(product);
//			}
//		}
//		buildIndex();
//		buildSitemap();
//		buildOther();
//		return buildCount;
//	}

	@Transactional(readOnly = true)
	public int delete(String staticPath) {
		Assert.hasText(staticPath);

		File staticFile = new File(servletContext.getRealPath(staticPath));
		if (staticFile.exists()) {
			staticFile.delete();
			return 1;
		}
		return 0;
	}

	@Transactional(readOnly = true)
	public int delete(Article article) {
		Assert.notNull(article);

		int deleteCount = 0;
//		for (int pageNumber = 1; pageNumber <= article.getTotalPages() + 1000; pageNumber++) {
//			article.setPageNumber(pageNumber);
//			int count = delete(article.getPath());
//			if (count < 1) {
//				break;
//			}
//			deleteCount += count;
//		}
		//article.setPageNumber(null);
		return deleteCount;
	}
//
//	@Transactional(readOnly = true)
//	public int delete(Product product) {
//		Assert.notNull(product);
//
//		return 0;//delete(product.getPath());
//	}

	@Transactional(readOnly = true)
	public int deleteIndex() {
		Template template = templateService.get("index");
		return delete(template.getStaticPath());
	}

	@Transactional(readOnly = true)
	public int deleteOther() {
		int deleteCount = 0;
		Template shopCommonJsTemplate = templateService.get("shopCommonJs");
		Template adminCommonJsTemplate = templateService.get("adminCommonJs");
		deleteCount += delete(shopCommonJsTemplate.getStaticPath());
		deleteCount += delete(adminCommonJsTemplate.getStaticPath());
		return deleteCount;
	}

}