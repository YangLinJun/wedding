package com.yang.bean;

import org.springframework.cglib.beans.BulkBean;

public class Message {

    private boolean success;

    private int status;

    private String msg;


    private Message(MessageBuilder origin){
        this.success = origin.success;
        this.status = origin.status;
        this.msg = origin.msg;
    }


    public static class MessageBuilder{
        private boolean success;

        private int status;

        private String msg;

        public MessageBuilder success(boolean success){
            this.success = success;
            return this;
        }

        public MessageBuilder status(int status){
            this.status = status;
            return this;
        }

        public MessageBuilder msg(String msg){
            this.msg = msg;
            return this;
        }

        public Message builder(){
            return new Message(this);
        }
    }
}

