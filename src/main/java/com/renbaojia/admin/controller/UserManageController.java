package com.renbaojia.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by smallRen on 2017/10/31.
 */
@Controller
public class UserManageController extends  BaseController{
    @RequestMapping("/userManage.html")
    public String userManage() {
        return "/admin/userManage";
    }
 
}
