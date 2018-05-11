package com.renbaojia.admin.controller;

import com.renbaojia.service.AdminUserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * Created by smallRen on 2017/10/31.
 */
@Controller
public class AdminIndexController extends BaseController {
    @Autowired
    AdminUserService adminUserService;
    @Autowired
    ShiroFilterFactoryBean shiroFilterFactoryBean;
@Autowired
    HttpSession httpSession;
    @RequestMapping("/login.html")
    public String login() {
        shiroFilterFactoryBean.getLoginUrl();
        System.out.println(shiroFilterFactoryBean.getLoginUrl());
        shiroFilterFactoryBean.setLoginUrl("/admin/login.html");
        System.out.println(shiroFilterFactoryBean.getLoginUrl());
        return "/admin/login";
    }

    @RequestMapping("/index.html")
    public String index() {
        System.out.println("index:" + shiroFilterFactoryBean.getLoginUrl());
        return "admin/adminIndex";
    }


    @ResponseBody
    @PostMapping("/adminLogin")
    public String adminLogin(@RequestParam("username") String username, String password) {
        if (adminUserService.checkUser(username)) {
            System.out.println(username + password);
            Subject currentUser = SecurityUtils.getSubject();
            if (currentUser.isRemembered()) {
                return "true";
            } else {
            }
            if (!currentUser.isAuthenticated()) {
                UsernamePasswordToken token = new UsernamePasswordToken(username, password);
                try {
                    currentUser.login(token);
                } catch (AuthenticationException ae) {
                    return "false";
                }
                System.out.println("登录成功: ");
                return "true";
            }
            return "false";
        }
        return "false";
    }


    @RequestMapping("/exit")
    public String exit() {
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        return "/admin/login";
    }

}
