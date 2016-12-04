package com.courses.ajax.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class jQueryController {

    @RequestMapping(value = "/jQuery", method = RequestMethod.GET)
    @ResponseBody
    public String printWithJQuery() {
        String string = "Hello jQuery!!!!!";
        return string;
    }
}
