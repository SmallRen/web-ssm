package com.renbaojia.admin.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.renbaojia.model.Picture;
import com.renbaojia.model.SpaceContent;
import com.renbaojia.service.PictureService;
import com.renbaojia.service.SpaceService;
import com.renbaojia.service.VideoService;
import com.renbaojia.utils.ImgShear;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;


/**
 * Created by smallRen on 2017/11/2.
 */
@Controller
public class SpaceManageController extends BaseController {
    @Autowired
    SpaceService spaceService;
    @Autowired
    PictureService pictureService;
    @Autowired
    VideoService videoService;

    @RequestMapping("/spaceManage.html")
    public String spaceManage() {
        return "/admin/spaceManage";
    }

    @RequestMapping("/spacePush.html")
    public String spacePush() {
        return "/admin/spacePush";
    }

    @ResponseBody
    @GetMapping("/spaceAll/{page}")
    public PageInfo articlesAll(@PathVariable Integer page) {
        PageHelper.startPage(page, 10);
        List<SpaceContent> spaceContents = spaceService.all();
        PageInfo pageInfo = new PageInfo(spaceContents, 4);
        return pageInfo;
    }

    @ResponseBody
    @PostMapping("/insertSpace")
    public Integer insertSpace(SpaceContent spaceContent) {
        return spaceService.insert(spaceContent);
    }

    @ResponseBody
    @PostMapping("/spaceFilesUploadImg")
    public boolean spaceFilesUploadImg(@RequestParam("files") MultipartFile[] files, HttpServletRequest request) {
        Integer id = Integer.valueOf(request.getHeader("spaceId"));
        if (files != null && files.length > 0) {
            for (MultipartFile file : files) {
                if (!file.isEmpty()) {
                    try {
                        // 文件保存路径
                        String filePath = "img/simpleimg/" + file.getOriginalFilename();// 转存文件
                        file.transferTo(new File(filePath));
                        System.out.println(filePath);
                        pictureService.insert(id, "/img/simpleimg/" + file.getOriginalFilename(), file.getOriginalFilename());
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
            return true;
        }

        return false;
    }

    @ResponseBody
    @PostMapping("/spaceFilesUploadVideo")
    public boolean spaceFilesUploadVideo(@RequestParam("files") MultipartFile[] files, HttpServletRequest request) {
        Integer id = Integer.valueOf(request.getHeader("spaceId"));
        if (files != null && files.length > 0) {
            for (MultipartFile file : files) {
                if (!file.isEmpty()) {
                    try {
                        // 文件保存路径
                        String filePath = "img/video/" + file.getOriginalFilename();
                        // 转存文件


                        file.transferTo(new File(filePath));
                        videoService.insert(id, "/video/" + file.getOriginalFilename(), file.getOriginalFilename());


                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
            return true;
        } else {
            return false;
        }
    }

    @ResponseBody
    @GetMapping("/deleteSpace/{id}")
    public boolean delectsapce(@PathVariable Integer id) {
        return spaceService.delete(id);

    }

    @ResponseBody
    @PostMapping("/spaceEdit/")
    public boolean spaceEdit(SpaceContent spaceContent) {
        return spaceService.spaceUpdate(spaceContent);

    }
}
