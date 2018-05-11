package com.renbaojia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created by smallRen on 2017/8/6.
 */
@Controller
public class PageController {


    @GetMapping("/about.html")
    public String about() {
        return "about";
    }

    @GetMapping("/growth.html")
    public String growth() {
        return "growth";
    }


    @GetMapping("/weatherDetails.html")
    public String weatherDetails() {
        return "weatherDetails";
    }

    @GetMapping("/userInfo.html")
    public String userInfo() {
        return "userInfo";
    }

    @GetMapping("/bindPhone.html")
    public String bindPhone() {
        return "bindIndex";
    }



}
