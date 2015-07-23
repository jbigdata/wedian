package com.wedian.site.modules.weixin.entity;

import com.wedian.site.common.persistence.DataEntity;

/**
 * Created by Administrator on 2015/7/23.
 */
public class Group  extends DataEntity<Group> {

    private String id;//id
    private String name;//分组名称
    private String count;//人员数量

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCount() {
        return count;
    }

    public void setCount(String count) {
        this.count = count;
    }
}
