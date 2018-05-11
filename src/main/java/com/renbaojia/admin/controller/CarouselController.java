package com.renbaojia.admin.controller;

import com.renbaojia.service.CarouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by smallRen on 2017/11/28.
 */
@Controller
public class CarouselController extends BaseController {
    @Autowired
    CarouseService carouseService;

    @ResponseBody
    @GetMapping("/deleteCarousel/{id}")
    public boolean deleteCarousel(@PathVariable Integer id) {
        boolean a = carouseService.deleteCarousel(id);
        return false;
    }
}
