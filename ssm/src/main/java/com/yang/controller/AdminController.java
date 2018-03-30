package com.yang.controller;

import com.yang.bean.Message;
import com.yang.bean.User;
import com.yang.bean.UserExample;
import com.yang.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController extends BaseController {

    @Autowired
    private UserService userService;


    @RequestMapping("")
    public String index(){
        return "admin/index";
    }

    @RequestMapping("/login")
    public ModelAndView login(User user){
        ModelAndView mv = getMv();
        UserExample example = new UserExample();
        example.createCriteria().andUsernameEqualTo(user.getUsername()).andPasswordEqualTo(user.getPassword());
        List<User> userList = userService.selectByExample(example);
        System.out.println(user.getUsername());
        System.out.println(user.getPassword());
        System.out.println(userList);
        if(userList.size()>0){
           mv.addObject(userList.get(0));
           mv.setViewName("admin/main");
           return mv;
        }
        Message  message =  new Message.MessageBuilder().success(false).status(500).msg("用户名或密码错误!").builder();

        mv.addObject("msg",message);
        mv.setViewName("forward:admin/err");
        return mv;
    }

    @RequestMapping("/err")
    public String err(Message message){
        System.out.println(message);
        return "admin/err";
    }

    @RequestMapping("/loginOut")
    public String loginOut(){
        return "forward:";
    }
}
