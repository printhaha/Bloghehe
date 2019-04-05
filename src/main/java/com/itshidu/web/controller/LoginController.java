package com.itshidu.web.controller;

import com.itshidu.web.entity.User;
import com.itshidu.web.service.LoginService;
import com.itshidu.web.vo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
public class LoginController {

    @Autowired  LoginService _LoginService;
    @ResponseBody
    @RequestMapping("/public/login")
    public Result Login(String username, String password){
       return _LoginService.Login(username,password);
    }
    @RequestMapping("home/public/logout")
    public Object Logout(HttpServletRequest request){
        request.getSession().removeAttribute("loginInfo");
        return "redirect:/login.html";
    }
}
