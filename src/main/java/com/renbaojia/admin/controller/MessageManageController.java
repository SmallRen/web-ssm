package com.renbaojia.admin.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.renbaojia.model.MessageBoard;
import com.renbaojia.service.MessageBoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by smallRen on 2017/10/31.
 */
@Controller
public class MessageManageController extends BaseController {
    @Autowired
    MessageBoardService messageBoardService;

    @RequestMapping("/message.html")
    public String message() {
        return "/admin/message";
    }

    @ResponseBody
    @RequestMapping("/allMessage/{page}")
    public PageInfo allMessage(@PathVariable Integer page) {
        List<MessageBoard> messageBoards = messageBoardService.adminAllMessageBoard();
        PageHelper.startPage(page, 10);
        PageInfo pageInfo = new PageInfo(messageBoards, 4);
        return pageInfo;
    }

    @ResponseBody
    @RequestMapping("/deleteMessage/{id}")
    public boolean deleteMessage(@PathVariable Integer id) {

        return  messageBoardService.deleteMessage(id);
    }

}
