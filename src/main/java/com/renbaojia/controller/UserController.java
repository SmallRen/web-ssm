package com.renbaojia.controller;

import com.alibaba.fastjson.JSON;
import com.qq.connect.QQConnectException;
import com.qq.connect.api.OpenID;
import com.qq.connect.api.qzone.PageFans;
import com.qq.connect.api.qzone.UserInfo;
import com.qq.connect.javabeans.AccessToken;
import com.qq.connect.javabeans.qzone.PageFansBean;
import com.qq.connect.javabeans.qzone.UserInfoBean;
import com.qq.connect.javabeans.weibo.Company;
import com.qq.connect.oauth.Oauth;
import com.renbaojia.admin.controller.BaseController;
import com.renbaojia.model.User;
import com.renbaojia.service.UserService;
import com.renbaojia.utils.ImgBase64;
import com.renbaojia.utils.Md5Utils;
import com.renbaojia.websocket.SpringWebSocketHandler;
import com.sun.imageio.plugins.common.ImageUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.socket.TextMessage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;

@Controller
public class UserController {
    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @Bean//这个注解会从Spring容器拿出Bean
    public SpringWebSocketHandler infoHandler() {
        return new SpringWebSocketHandler();
    }

    @Autowired
    HttpSession session;
    @Autowired
    UserService userService;
    @Autowired
    RedisTemplate<String, String> redisTemplate;


    @GetMapping("/qqLogin")
    public String qqLogin(HttpServletRequest request) {
        try {
            return "redirect:" + new Oauth().getAuthorizeURL(request);
        } catch (QQConnectException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * @param phone
     * @param msgCode
     * @param password
     * @return
     * @qq登录注册用户
     */
    @ResponseBody
    @PostMapping("/qqRegister.html")
    public String qqRegister(String phone, String msgCode, String password, String address) {
        ValueOperations<String, String> stringOperations = redisTemplate.opsForValue();
        String s = stringOperations.get("bind" + phone);
        if (s.equals(msgCode)) {
            Object SaltPassword = Md5Utils.SimpleHash(phone, password);
            String openID = (String) session.getAttribute("OpenID");
            String gender = (String) session.getAttribute("gender");
            String imageUrl = (String) session.getAttribute("imageUrl");
            String imageBase64 = ImgBase64.UrlToBasbe64(imageUrl);
            String pickName = (String) session.getAttribute("pickName");
            if (userService.checkUser(phone)) {
                User user = userService.getUser(phone);
                user.setPassword(String.valueOf(SaltPassword));
                user.setOpenid(String.valueOf(openID));
                user.setImage(imageBase64);
                userService.updateUserInfo(user);
            } else {
                userService.insert(phone, String.valueOf(SaltPassword), String.valueOf(openID), address, gender, imageBase64, pickName);
            }
            Subject currentUser = SecurityUtils.getSubject();
            UsernamePasswordToken token = new UsernamePasswordToken(phone, password);
            try {
                currentUser.login(token);
                session.setAttribute("userInfo", userService.getUser(phone));
            } catch (AuthenticationException ae) {
                return "errorCode";
            }
            return "success";

        }
        return "errorCode";
    }

    @ResponseBody
    @PostMapping("/phoneRegister")
    public String phoneRegister(String phone, String msgCode, String password, String address) {
        if (!userService.checkUser(phone)) {
            ValueOperations<String, String> stringOperations = redisTemplate.opsForValue();
            String s = stringOperations.get(phone);
            if (s.equals(msgCode)) {
                Object SaltPassword = Md5Utils.SimpleHash(phone, password);
                System.out.println("SaltPassword:" + SaltPassword);
                userService.insert(phone, String.valueOf(SaltPassword), "", address, "男", ImgBase64.GetImageStr(), phone);
                Subject currentUser = SecurityUtils.getSubject();
                UsernamePasswordToken token = new UsernamePasswordToken(phone, password);
                try {
                    currentUser.login(token);
                    session.setAttribute("userinfo", userService.getUser(phone));

                } catch (AuthenticationException ae) {
                    return "errorCode";
                }
                return "/";

            }
            return "errorCode";
        } else {
            return "exist";
        }

    }

    @ResponseBody
    @PostMapping("/findPwd")
    public String findPwd(String phone, String msgcode, String password) {
        if (userService.checkUser(phone)) {
            ValueOperations<String, String> stringOperations = redisTemplate.opsForValue();
            String s = stringOperations.get(phone);
            if (s.equals(msgcode)) {
                if (userService.findPwd(phone, password)) {
                    return "true";
                } else {
                    return "false";
                }
            }
            return "errorCode";
        } else {
            return "unexist";
        }
    }

    @ResponseBody
    @PostMapping("/checkPhone.html")
    public String checkPhone(String phone) {
        if (userService.checkUser(phone)) {
            return "false";
        }
        return "true";
    }

    @ResponseBody
    @PostMapping("/updateUserInfo")
    public String updateUserInfo(User user) {
        userService.updateUserInfo(user);
        System.out.println(user.getId()+user.getUsername());
        session.setAttribute("userInfo", userService.userById(user.getId()));
        return "true";
    }


    @ResponseBody
    @PostMapping("/login.html")
    public String login(@RequestParam("userPhone") String username, String password) {
        System.out.println(username + password);
        if(userService.checkUser(username)){
            Subject currentUser = SecurityUtils.getSubject();
            if (currentUser.isRemembered()) {
            } else {
            }

            if (!currentUser.isAuthenticated()) {
                // 把用户名和密码封装为 UsernamePasswordToken 对象
                UsernamePasswordToken token = new UsernamePasswordToken(username, password);
                try {
                    System.out.println("1. " + token.hashCode());
                    // 执行登录.
                    currentUser.login(token);
                }
                // 所有认证时异常的父类.
                catch (Exception ae) {
                    return "validationError";
                }
                session.setAttribute("userInfo", userService.getUser(username));
                return "true";
            }
        }else {

            return "unknownUser";
        }

        return "false";
    }

    @GetMapping("/afterLogin.html")
    public void afterLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String imgUrl;
        PrintWriter out = response.getWriter();
        try {
            AccessToken accessTokenObj = (new Oauth()).getAccessTokenByRequest(request);
            String accessToken = null,
                    openID = null;
            long tokenExpireIn = 0L;
            if (accessTokenObj.getAccessToken().equals("")) {
//                我们的网站被CSRF攻击了或者用户取消了授权
//                做一些数据统计工作
                System.out.println(accessTokenObj.getAccessToken());
            } else {
                accessToken = accessTokenObj.getAccessToken();
                tokenExpireIn = accessTokenObj.getExpireIn();
                request.getSession().setAttribute("demo_access_token", accessToken);
                request.getSession().setAttribute("demo_token_expirein", String.valueOf(tokenExpireIn));
                // 利用获取到的accessToken 去获取当前用的openid -------- start
                OpenID openIDObj = new OpenID(accessToken);
                System.out.println(accessToken);
                openID = openIDObj.getUserOpenID();
                System.out.println(openID);
                session.setAttribute("openID", openID);
                if (userService.checkByOpenID(openID) && accessToken != null) {
                    User user = userService.selectByOpenID(openID);
                    Subject currentUser = SecurityUtils.getSubject();
                    UsernamePasswordToken token = new UsernamePasswordToken(user.getPhone(), user.getPassword());
                    try {
                        // 执行登录.
                        token.setRememberMe(true);
                        currentUser.login(token);
                    }
                    // ... catch more exceptions here (maybe custom ones specific to your application?
                    // 所有认证时异常的父类.
                    catch (Exception ae) {
                        //unexpected condition?  error?
                        System.out.println("登录失败: " + ae.getMessage());
                        // return null;

                    }
                    //获取SessionId;
                    String attribute = (String) session.getAttribute("SESSION_USERNAME");
                    System.out.println("登录之后获取的：" + attribute);
                    infoHandler().sendMessageToUser(attribute, new TextMessage(user.getImage().toString()));
                    infoHandler().sendMessageToUser(attribute, new TextMessage(user.getUsername().toString()));
                    session.setAttribute("userInfo", user);
                    System.out.println("登录成功: ");
                    //  return "index";
                } else {
                    session.setAttribute("OpenID", openID);
                    String attribute = (String) session.getAttribute("SESSION_USERNAME");
                    infoHandler().sendMessageToUser(attribute, new TextMessage("bind"));
                    System.out.println("欢迎你，代号为 " + openID + " 的用户!");
                    // request.getSession().setAttribute("demo_openid", openID);
                    System.out.println("<a href=" + "/shuoshuoDemo.html" + " target=\"_blank\">去看看发表说说的demo吧</a>");
                    // 利用获取到的accessToken 去获取当前用户的openid --------- end
                    System.out.println("<p> start -----------------------------------利用获取到的accessToken,openid 去获取用户在Qzone的昵称等信息 ---------------------------- start </p>");
                    UserInfo qzoneUserInfo = new UserInfo(accessToken, openID);
                    UserInfoBean userInfoBean = qzoneUserInfo.getUserInfo();
                    out.println("<br/>");
                    if (userInfoBean.getRet() == 0) {
                        System.out.println(userInfoBean.getNickname() + "<br/>");
                        System.out.println(userInfoBean.getGender() + "<br/>");
                        session.setAttribute("gender", userInfoBean.getGender());
                        session.setAttribute("imageUrl", userInfoBean.getAvatar().getAvatarURL100().toString());
                        session.setAttribute("pickName", userInfoBean.getNickname());
                        // System. out.println("黄钻等级： " + userInfoBean.getLevel() + "<br/>");
                        // System. out.println("会员 : " + userInfoBean.isVip() + "<br/>");
                        // System.out.println("黄钻会员： " + userInfoBean.isYellowYearVip() + "<br/>");
                        // System.out.println("<image src=" + userInfoBean.getAvatar().getAvatarURL30() + "/><br/>");
                        // System.out.println("<image src=" + userInfoBean.getAvatar().getAvatarURL50() + "/><br/>");
                        // System. out.println("<image src=" + userInfoBean.getAvatar().getAvatarURL100() + "/><br/>");

                    } else {
                        //  System.out.println("很抱歉，我们没能正确获取到您的信息，原因是： " + userInfoBean.getMsg());
                    }
                    // System. out.println("<p> end -----------------------------------利用获取到的accessToken,openid 去获取用户在Qzone的昵称等信息 ---------------------------- end </p>");
                    // System.out.println("<p> start ----------------------------------- 验证当前用户是否为认证空间的粉丝------------------------------------------------ start <p>");
                    PageFans pageFansObj = new PageFans(accessToken, openID);
                    PageFansBean pageFansBean = pageFansObj.checkPageFans("97700000");
                    if (pageFansBean.getRet() == 0) {
                        out.println("<p>验证您" + (pageFansBean.isFans() ? "是" : "不是") + "QQ空间97700000官方认证空间的粉丝</p>");
                    } else {
                        //    out.println("很抱歉，我们没能正确获取到您的信息，原因是： " + pageFansBean.getMsg());
                    }
                    //   System.out.println("<p> end ----------------------------------- 验证当前用户是否为认证空间的粉丝------------------------------------------------ end <p>");


                    //System. out.println("<p> start -----------------------------------利用获取到的accessToken,openid 去获取用户在微博的昵称等信息 ---------------------------- start </p>");
                    com.qq.connect.api.weibo.UserInfo weiboUserInfo = new com.qq.connect.api.weibo.UserInfo(accessToken, openID);
                    com.qq.connect.javabeans.weibo.UserInfoBean weiboUserInfoBean = weiboUserInfo.getUserInfo();
                    if (weiboUserInfoBean.getRet() == 0) {
                        imgUrl = weiboUserInfoBean.getAvatar().getAvatarURL100();
                        //获取用户的微博头像----------------------start
                        //   System.  out.println("<image src=" + weiboUserInfoBean.getAvatar().getAvatarURL30() + "/><br/>");
                        //   System. out.println("<image src=" + weiboUserInfoBean.getAvatar().getAvatarURL50() + "/><br/>");
                        //  System. out.println("<image src=" + weiboUserInfoBean.getAvatar().getAvatarURL100() + "/><br/>");
                        //   session.setAttribute("detialsimage", weiboUserInfoBean.getAvatar().getAvatarURL50());
                        //获取用户的微博头像 ---------------------end
                        //获取用户的生日信息 --------------------start
                        //  System.  out.println("<p>尊敬的用户，你的生日是： " + weiboUserInfoBean.getBirthday().getYear()    + "年" + weiboUserInfoBean.getBirthday().getMonth() + "月" +
                        //                        weiboUserInfoBean.getBirthday().getDay() + "日");
                        //获取用户的生日信息 --------------------end
                        StringBuffer sb = new StringBuffer();
                        sb.append("<p>所在地:" + weiboUserInfoBean.getCountryCode() + "-" + weiboUserInfoBean.getProvinceCode() + "-" + weiboUserInfoBean.getCityCode()
                                + weiboUserInfoBean.getLocation());

                        //获取用户的公司信息---------------------------start
                        ArrayList<Company> companies = weiboUserInfoBean.getCompanies();
                        if (companies.size() > 0) {
                            //有公司信息
                            for (int i = 0, j = companies.size(); i < j; i++) {
                                sb.append("<p>曾服役过的公司：公司ID-" + companies.get(i).getID() + " 名称-" +
                                        companies.get(i).getCompanyName() + " 部门名称-" + companies.get(i).getDepartmentName() + " 开始工作年-" +
                                        companies.get(i).getBeginYear() + " 结束工作年-" + companies.get(i).getEndYear());
                            }
                        } else {
                            //没有公司信息
                        }
                        //获取用户的公司信息---------------------------end

                        System.out.println(sb.toString());

                    } else {
                        System.out.println("很抱歉，我们没能正确获取到您的信息，原因是： " + weiboUserInfoBean.getMsg());
                    }

                    System.out.println("<p> end -----------------------------------利用获取到的accessToken,openid 去获取用户在微博的昵称等信息 ---------------------------- end </p>");

                    /**
                     * 添加shiro认证
                     */
                  /*  User user = new User();
                    user.setUsername(userInfoBean.getNickname());
                    user.setPassword("1");
                    session.setAttribute("userinfo", user);*/


                    //return "index";
                }
            }
        } catch (QQConnectException e) {
            e.printStackTrace();
        }
        //   return "index";
    }


    @GetMapping("/exit.html")
    public void exit() {
        //session.removeAttribute("userinfo");
    }

    //图片上传
    @RequestMapping(value = "/upload")
    public String upload(@RequestParam(value = "file", required = false) MultipartFile file, HttpServletRequest request, Model model) {

        System.out.println("开始");
        String path = request.getSession().getServletContext().getRealPath("upload");
        String fileName = file.getOriginalFilename();
//        String fileName = new Date().getTime()+".jpg";
        System.out.println(path);
        File targetFile = new File(path, fileName);
        if (!targetFile.exists()) {
            targetFile.mkdirs();
        }
        try {
            file.transferTo(targetFile);
        } catch (Exception e) {
            e.printStackTrace();
        }
        model.addAttribute("fileUrl", request.getContextPath() + "/upload/" + fileName);

        return "success";
    }

    /*
     *采用spring提供的上传文件的方法
     */
    @RequestMapping("springUpload")
    public String springUpload(HttpServletRequest request) throws IllegalStateException, IOException {
        long startTime = System.currentTimeMillis();
        //将当前上下文初始化给  CommonsMutipartResolver （多部分解析器）
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
                request.getSession().getServletContext());
        //检查form中是否有enctype="multipart/form-data"
        if (multipartResolver.isMultipart(request)) {
            //将request变成多部分request
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
            //获取multiRequest 中所有的文件名
            Iterator iter = multiRequest.getFileNames();

            while (iter.hasNext()) {
                //一次遍历所有文件
                MultipartFile file = multiRequest.getFile(iter.next().toString());
                if (file != null) {
                    String path = "C:\\Users\\smallRen\\Desktop\\" + file.getOriginalFilename();
                    //上传
                    file.transferTo(new File(path));
                }

            }

        }
        long endTime = System.currentTimeMillis();
        System.out.println("方法三的运行时间：" + String.valueOf(endTime - startTime) + "ms");
        return "/success";
    }

    @RequestMapping("/download")
    public String download(HttpServletResponse response, HttpServletRequest request) throws UnsupportedEncodingException {
        // String path = request.getSession().getServletContext().getRealPath("upload");
        String path = "E:\\英雄联盟安装包";
        File file = new File("E:\\英雄联盟安装包\\LOL_V4.0.5.1_FULL.7z.001");
        response.setCharacterEncoding("utf-8");
        response.setContentType("multipart/form-data");
        response.setContentLengthLong(file.length());
        //String fileName=new String("QQ截图20170705103502.png".getBytes("UTF-8"),"iso-8859-1");//为了解决中文名称乱码问题
        response.setHeader("Content-Disposition", "attachment;fileName="
                + URLEncoder.encode("LOL_V4.0.5.1_FULL.7z.001", "UTF-8"));
        try {

            InputStream inputStream = new FileInputStream(new File(path
                    + File.separator + "LOL_V4.0.5.1_FULL.7z.001"));

            OutputStream os = response.getOutputStream();
            byte[] b = new byte[2048];
            int length;
            while ((length = inputStream.read(b)) > 0) {
                os.write(b, 0, length);
            }

            // 这里主要关闭。
            os.close();

            inputStream.close();
        } catch (IOException e) {

            System.out.println("下载已取消");
        }
        //  返回值要注意，要不然就出现下面这句错误！
        //java+getOutputStream() has already been called for this response
        return null;
    }
}
