package com.renbaojia.controller;


import com.renbaojia.service.UserService;
/*import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;*/
import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.concurrent.TimeUnit;

/**
 * Created by smallRen on 2017/7/17.
 */
@RestController
public class FindPwdSendController {
    @Autowired
    RedisTemplate<String, String> redisTemplate;
    @Autowired
    UserService userService;

    /**
     * @param phone
     * @return 发送短信
     */
    @ResponseBody
    @GetMapping("/findSendMsg")
    public String findSendMsg(@RequestParam("phone") String phone) {
        if (userService.checkUser(phone)) {
            int rn = (int) (Math.random() * (9999 - 1000 + 1)) + 1000;
            String ParamString = "{code:\'" + rn + "\'}";
            TaobaoClient client = new DefaultTaobaoClient("https://eco.taobao.com/router/rest", "23859021", "f700a20277c8014bb3fb44391d545c15");
            AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
            req.setExtend("");
            req.setSmsType("normal");
            req.setSmsFreeSignName("远智团队");
            req.setSmsParamString(ParamString);
            req.setRecNum(phone);
            req.setSmsTemplateCode("SMS_67810091");
            AlibabaAliqinFcSmsNumSendResponse rsp;
            try {
                rsp = client.execute(req);
                System.out.println(rn + "发送成功");
                ValueOperations<String, String> stringOperations = redisTemplate.opsForValue();
                stringOperations.set(phone, rn + "", 60 * 30, TimeUnit.SECONDS);//60秒
                return   "";
            } catch (ApiException e) {
                e.printStackTrace();
            }
        }
        return "unexist";
    }
}
