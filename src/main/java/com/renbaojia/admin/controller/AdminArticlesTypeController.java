package com.renbaojia.admin.controller;

import com.renbaojia.model.*;
import com.renbaojia.model.Exception;
import com.renbaojia.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Created by smallRen on 2017/11/27.
 */
@Controller
public class AdminArticlesTypeController extends BaseController {
    @Autowired
    LifeService lifeService;
    @Autowired
    SystemTypeService systemTypeService;
    @Autowired
    LanguageService languageService;
    @Autowired
    IdeService ideService;
    @Autowired
    ExceptionService exceptionService;

    @RequestMapping("/articlesType.html")
    public String articlesType() {
        return "/admin/articlesType";
    }

    @ResponseBody
    @RequestMapping("/life")
    public List<Life> life() {
        return lifeService.baseAll();
    }

    @ResponseBody
    @RequestMapping("/deleteLife/{id}")
    public boolean deleteLife(@PathVariable Integer id) {
        return lifeService.deleteLife(id);
    }

    @ResponseBody
    @RequestMapping("/addLife/{type}")
    public Life addLife(@PathVariable String type) {
        return lifeService.addLife(type);
    }

    @ResponseBody
    @PostMapping("/updateLife")
    public boolean updateLife(Life life) {
        return lifeService.updateLife(life);
    }

    @ResponseBody
    @RequestMapping("/system")
    public List<SystemType> system() {
        return systemTypeService.baseAll();
    }

    @ResponseBody
    @RequestMapping("/deleteSystem/{id}")
    public boolean deleteSystem(@PathVariable Integer id) {
        return systemTypeService.deleteSystem(id);
    }

    @ResponseBody
    @RequestMapping("/addSystem/{type}")
    public SystemType addSystem(@PathVariable String type) {
        return systemTypeService.addSystem(type);
    }

    @ResponseBody
    @PostMapping("/updateSystem")
    public boolean updateSystem(SystemType sytemType) {
        return systemTypeService.updateSystem(sytemType);
    }

    @ResponseBody
    @RequestMapping("/language")
    public List<Language> language() {
        return languageService.baseAll();
    }

    @ResponseBody
    @RequestMapping("/deleteLanguage/{id}")
    public boolean deleteLanguage(@PathVariable Integer id) {
        return languageService.deleteLanguage(id);
    }

    @ResponseBody
    @RequestMapping("/addLanguage/{type}")
    public Language addLanguage(@PathVariable String type) {
        return languageService.addLanguage(type);
    }

    @ResponseBody
    @PostMapping("/updateLanguage")
    public boolean updateLanguage(Language language) {
        return languageService.updateLanguage(language);
    }

    @ResponseBody
    @RequestMapping("/ide")
    public List<IDE> ide() {
        return ideService.baseAll();
    }

    @ResponseBody
    @RequestMapping("/deleteIde/{id}")
    public boolean deleteIde(@PathVariable Integer id) {
        return ideService.deleteIde(id);
    }

    @ResponseBody
    @RequestMapping("/addIde/{type}")
    public IDE addIde(@PathVariable String type) {
        return ideService.addIde(type);
    }

    @ResponseBody
    @PostMapping("/updateIde")
    public boolean updateIde(IDE ide) {
        return ideService.updateIde(ide);
    }

    @ResponseBody
    @RequestMapping("/exception")
    public List<Exception> exception() {
        return exceptionService.baseAll();
    }

    @ResponseBody
    @RequestMapping("/deleteException/{id}")
    public boolean deleteException(@PathVariable Integer id) {
        return exceptionService.deleteException(id);
    }

    @ResponseBody
    @RequestMapping("/addException/{type}")
    public Exception addException(@PathVariable String type) {
        return exceptionService.addException(type);
    }

    @ResponseBody
    @PostMapping("/updateException")
    public boolean updateException(Exception e) {
        return exceptionService.updateException(e);
    }
}
