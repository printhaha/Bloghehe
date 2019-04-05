package com.itshidu.web.controller;

import com.itshidu.web.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/account")
public class AccountController {
    @RequestMapping(value = {"/{name}"})
    public  Object index(@PathVariable String name ,HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("loginInfo");
        if(user==null){
            return "redirect:/login.html";
        }
        ModelAndView mv = new ModelAndView("account/"+name);
        return mv;

    }
}
