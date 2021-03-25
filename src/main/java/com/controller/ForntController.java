package com.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ForntController {

    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public String hello() {
        return "hello";
    }
    @RequestMapping(value = "/ok", method = RequestMethod.GET)
    public String ok() {
        return "ok";
    }
    @RequestMapping(value = "/A", method = RequestMethod.GET)
    public String a() {
        return "a";
    }
}
