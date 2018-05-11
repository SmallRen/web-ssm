package com.renbaojia.controller;

import com.renbaojia.model.SpaceContent;
import com.renbaojia.service.SpaceContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by smallRen on 2017/10/29.
 */
@Controller
public class SpaceController {
    @Autowired
    SpaceContentService spaceContentService;

    @GetMapping("/space.html")
    public ModelAndView PhotoAlbum() {
        List<SpaceContent> list = spaceContentService.all();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("info", list);
        modelAndView.setViewName("space");
        return modelAndView;
    }

}
