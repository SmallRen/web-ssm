package com.renbaojia.model;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by smallRen on 2017/7/20.
 */
public class Msg {
    //100成功！200失败！
    private int code;
    private String msg;
    private Map<String,Object> data=new HashMap<String,Object>();
    public static Msg success(){
        Msg result=new Msg();
        result.setCode(100);
        result.setMsg("处理成功！");
        return  result;
    }
    public static Msg error(){
        Msg result=new Msg();
        result.setCode(200);
        result.setMsg("处理失败！");
        return  result;
    }
    public Msg add(String key, Object value){
        this.getData().put(key,value);
        return  this;
    }
    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Map<String, Object> getData() {
        return data;
    }

    public void setData(Map<String, Object> data) {
        this.data = data;
    }


}
