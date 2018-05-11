package com.renbaojia.controller;

import com.renbaojia.model.Msg;
import com.renbaojia.model.Reverts;
import com.renbaojia.service.RevertsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created by smallRen on 2017/10/25.
 */
@Controller
public class RevertsController {
    @Autowired
    RevertsService revertsService;

    @PostMapping("/selectReverts")
    @ResponseBody
    public Msg selectReverts(@RequestParam("articlesId") Integer articlesId,
                             @RequestParam("commId") Integer commId) {
        List<Reverts> reverts = revertsService.selectArticleIdAndCommId(articlesId, commId);
        return Msg.success().add("info", reverts);
    }


    @PostMapping("/addRevert")
    @ResponseBody
    public Msg addRevert(Reverts reverts) {
        revertsService.insertRevert(reverts);
        return Msg.success();
    }

}
