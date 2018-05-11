package com.renbaojia.controller;

import com.renbaojia.model.MessageBoard;
import com.renbaojia.service.MessageBoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by smallRen on 2017/10/26.
 */
@Controller
public class MessageBoardController {
    @Autowired
    MessageBoardService messageBoardService;

    @GetMapping("/MessageBoard.html")
    public ModelAndView bind() {
        List<MessageBoard> messageBoards = messageBoardService.allMessageBoard();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("MessageBoard");
        modelAndView.addObject("info", messageBoards);
        return modelAndView;
    }

    @PostMapping("/addMessageBoard")
    @ResponseBody
    public String addMessageBoard(MessageBoard messageBoard) {
        return messageBoardService.insert(messageBoard);
    }
}
