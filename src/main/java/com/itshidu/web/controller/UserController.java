package com.itshidu.web.controller;

import com.itshidu.web.entity.User;
import com.itshidu.web.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.soap.SOAPBinding;
import javax.persistence.ManyToOne;
import java.util.Map;

@Controller
public class UserController {
    @Autowired RegisterService _regService;
    @RequestMapping(value = "/register.html")
    public Object register(ModelAndView mv){
        mv.setViewName("register");
        return mv;
    }
    @ResponseBody
    @RequestMapping(value = "/public/register")
    public Object register(User user){
    Map<String,Object> result=_regService.register(user);
        System.out.println("开始注册");
        System.out.println(user.getUsername());
        return result;
    }
}
