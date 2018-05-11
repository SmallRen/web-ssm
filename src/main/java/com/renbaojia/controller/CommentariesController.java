package com.renbaojia.controller;

import com.renbaojia.model.Commentaries;
import com.renbaojia.service.CommentariesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by smallRen on 2017/10/21.
 */
@Controller
public class CommentariesController {
@Autowired
    CommentariesService service;
    @ResponseBody
    @PostMapping("commentaries")
    public String commentaries(Commentaries commentaries){
        return service.add(commentaries);
    }
}
