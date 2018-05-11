package com.renbaojia.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.renbaojia.model.User;
import com.renbaojia.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import sun.misc.BASE64Encoder;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;

/**
 * Created by smallRen on 2017/10/27.
 */
@Controller
public class UploadImgController {
@Autowired
    HttpSession httpSession;
@Autowired
    UserService userService;
    @ResponseBody
    @PostMapping("/uploadImg")
    public String fileUpload2(@RequestParam("file") CommonsMultipartFile file) throws IOException {
        User user = (User) httpSession.getAttribute("userInfo");
        byte[] bytes = file.getBytes();
        BASE64Encoder encoder = new BASE64Encoder();
        String encode = encoder.encode(bytes);
        user.setImage(encode);
        userService.updateUserInfo(user);
        return "true";
    }
}
