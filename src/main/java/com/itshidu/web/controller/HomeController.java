package com.itshidu.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/home")
public class HomeController {
    @RequestMapping(value = {"/","/index"})
    public Object index2(){
        ModelAndView mv = new ModelAndView("home/index") ;
        return mv;
    }
}
