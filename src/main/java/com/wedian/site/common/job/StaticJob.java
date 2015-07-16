package com.wedian.site.common.job;


import org.springframework.context.annotation.Lazy;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * Job - 静态化
 * 
 * @author wanliang Team
 * @version 3.0
 */
@Component("staticJob")
@Lazy(false)
public class StaticJob {

	//@Resource
	//private StaticService staticService;

	/**
	 * 生成静态${job.static_build.cron}
	 */
	@Scheduled(cron = "${job.static_build.cron}")
	public void build() {
	//	System.out.println("-------------------11111111111111111111-------");
		//staticService.buildAll();
	//	staticService.buildIndex();
	}

}