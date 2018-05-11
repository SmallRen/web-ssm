package com.renbaojia.admin.controller;

import org.junit.Test;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by smallRen on 2017/11/29.
 */
@Controller
public class LogController extends BaseController {


    @ResponseBody
    @Test
    @RequestMapping("/allLog")
    public List<String> allLog() throws IOException {
        List<String> stringList = new ArrayList<>();
        String pathname = "/opt/logs/debug.log";
        File filename = new File(pathname); // 要读取以上路径的input。txt文件
        InputStreamReader reader = new InputStreamReader(new FileInputStream(filename)); // 建立一个输入流对象reader
        BufferedReader br = new BufferedReader(reader); // 建立一个对象，它把文件内容转成计算机能读懂的语言
        String line = "";
        line = br.readLine();
        while (line != null) {
            line = br.readLine(); // 一次读入一行数据
            stringList.add(line);
        }
        return stringList;
    }


    @RequestMapping("/log.html")
    public String log() {
        return "/admin/log";
    }

}
