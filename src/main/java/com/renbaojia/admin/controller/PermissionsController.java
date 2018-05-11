package com.renbaojia.admin.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.renbaojia.model.Permissions;
import com.renbaojia.service.PermissionsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by smallRen on 2017/11/30.
 */
@Controller
public class PermissionsController extends BaseController {
    @Autowired
    PermissionsService permissionsService;

    @RequestMapping("/permissions.html")
    public String permissions() {
        return "/admin/permissions";
    }

    @ResponseBody
    @RequestMapping("/allPermissions/{page}")
    public PageInfo allPermissions(@PathVariable Integer page) {
        PageHelper.startPage(page, 10);
        List<Permissions> permissionsList = permissionsService.allPermissions();
        return new PageInfo(permissionsList,4);
    }

    @ResponseBody
    @RequestMapping("/addPermissions")
    public Permissions addPermissions(Permissions permissions) {
        return  permissionsService.addPermissions(permissions);

    }

    @ResponseBody
    @RequestMapping("/updatePermissions")
    public boolean updatePermissions(Permissions permissions) {
        return permissionsService.updatePermissions(permissions);

    }

    @ResponseBody
    @RequestMapping("/deletePermissions/{id}")
    public boolean updatePermissions(@PathVariable Integer id) {
        return permissionsService.deletePermissions(id);

    }
}
