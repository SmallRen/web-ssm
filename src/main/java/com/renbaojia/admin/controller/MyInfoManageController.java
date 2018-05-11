package com.renbaojia.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by smallRen on 2017/10/31.
 */
@Controller
public class MyInfoManageController extends  BaseController{
    @RequestMapping("/myInfo.html")
    public String myInfo() {
        return "/admin/myInfo";
    }

}
