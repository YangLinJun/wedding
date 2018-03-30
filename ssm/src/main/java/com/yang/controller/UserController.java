package com.yang.controller;

import com.alibaba.fastjson.JSON;
import com.yang.bean.Message;
import com.yang.bean.User;
import com.yang.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/user")
public class UserController extends BaseController {

    @Autowired
    private UserService userService;

    @RequestMapping("/add")
    @ResponseBody
    public Message add(User user) {
        Message message = null;
        if (userService.insert(user) > 0) {
            message = getMessageBuilder().success(true).status(200).msg("添加成功").builder();
        } else {
            message = getMessageBuilder().success(false).status(400).msg("添加时发生异常!").builder();
        }
        return message;
    }

    @RequestMapping("/userInfo")
    @ResponseBody
    public Object test(){
        User user = new User();
        user.setNickname("小明");
        user.setUsername("814180366");
        user.setAddress("成都市龙泉驿区");
        return JSON.toJSON(user);
    }
}
