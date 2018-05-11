package com.renbaojia.admin.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.renbaojia.model.FailedMsg;
import com.renbaojia.model.MessageBoard;
import com.renbaojia.service.FailedMsgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class failedMessageController extends BaseController {

    @Autowired
    FailedMsgService failedMsgService;

    @GetMapping("failedMessage.html")
    public String page() {
        return "/admin/failedMessage";
    }

    @ResponseBody
    @RequestMapping("/allFailedMessage/{page}")
    public PageInfo allFailedMessage(@PathVariable Integer page) {
        List<FailedMsg> messageBoards = failedMsgService.allFailedMsg();
        PageHelper.startPage(page, 10);
        PageInfo pageInfo = new PageInfo(messageBoards, 4);
        return pageInfo;
    }

    @ResponseBody
    @RequestMapping("/deleteFailedMessage/{id}")
    public boolean deleteFailedMessage(@PathVariable Integer id) {
          failedMsgService.delete(id);
          return  true;
    }
}
