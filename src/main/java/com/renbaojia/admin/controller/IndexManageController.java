package com.renbaojia.admin.controller;

import com.renbaojia.model.Carousel;
import com.renbaojia.service.CarouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by smallRen on 2017/10/31.
 */
@Controller
public class IndexManageController extends BaseController {

    @Autowired
    CarouseService indexService;

    @RequestMapping("/indexManage.html")
    public String indexManage() {
        return "/admin/indexManage";
    }

    @ResponseBody
    @RequestMapping("/allIndex")
    public List<Carousel> allIndex() {
        return indexService.all();
    }
}
