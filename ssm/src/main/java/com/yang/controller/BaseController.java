package com.yang.controller;

import com.yang.bean.Message;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

public class BaseController {

    private ModelAndView mv;

    private Message.MessageBuilder messageBuilder;

    public ModelAndView getMv() {
        return new ModelAndView();
    }

    public Message.MessageBuilder getMessageBuilder() {
        return new Message.MessageBuilder();
    }
}
