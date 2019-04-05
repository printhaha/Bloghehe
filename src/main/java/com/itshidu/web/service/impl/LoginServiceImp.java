package com.itshidu.web.service.impl;

import com.itshidu.web.dao.UserDao;
import com.itshidu.web.entity.User;
import com.itshidu.web.service.LoginService;
import com.itshidu.web.vo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Service
public class LoginServiceImp implements LoginService {
    @Autowired
    UserDao _userDao;
    @Override
    public Result Login(String username, String password) {
        User user = _userDao.findByUsername(username);
        if(user==null) {
            return Result.of(100, "用户名不存在");
        }
        if(user.getStatus()==2) {
            return Result.of(102, "账号被封禁，请联系工作人员");
        }
        System.out.println(password);
        System.out.println(user.getPassword());

        if(password.equals(user.getPassword())) {

            HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
            HttpSession session = request.getSession();
            session.setAttribute("loginInfo", user);
         return Result.of(200, "登录成功");
        }

        return Result.of(103, "密码不正确");
    }


}
