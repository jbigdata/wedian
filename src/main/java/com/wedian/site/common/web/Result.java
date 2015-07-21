package com.wedian.site.common.web;

import com.wedian.site.common.utils.SpringUtils;

/**
 * Created by wanliang_mvp on 2015/7/21.
 */
public class Result {

    private String code;
    private String message;
    private Object data;

    public Result(String code){
        this.code=code;
        this.message= SpringUtils.getMessage(code);
    }
    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
