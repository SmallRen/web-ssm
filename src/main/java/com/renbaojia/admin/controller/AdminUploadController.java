package com.renbaojia.admin.controller;

import com.renbaojia.dao.ArticlesMapper;
import com.renbaojia.model.Articles;
import com.renbaojia.model.ArticlesWithBLOBs;
import com.renbaojia.model.User;
import com.renbaojia.service.ArticlesService;
import com.renbaojia.utils.ImgBase64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import sun.misc.BASE64Encoder;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/**
 * Created by smallRen on 2017/11/17.
 */
@Controller
public class AdminUploadController extends BaseController {
    @Autowired
    ArticlesService articlesService;

    @ResponseBody
    @PostMapping("/uploadImg")
    public String fileUpload2(@RequestParam("file") CommonsMultipartFile file, HttpServletRequest request) throws IOException {
        String id = request.getHeader("articlesId");
        ArticlesWithBLOBs articles = new ArticlesWithBLOBs();
        articles.setId(Integer.valueOf(id));
        byte[] bytes = file.getBytes();
        BASE64Encoder encoder = new BASE64Encoder();
        String encode = encoder.encode(bytes);
        articles.setThtmeImg(encode);
        boolean b = articlesService.articleUpdate(articles);
        return b ? "true" : "false";
    }
}
