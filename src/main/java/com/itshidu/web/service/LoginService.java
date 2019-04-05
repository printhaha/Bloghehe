package com.itshidu.web.service;

import com.itshidu.web.vo.Result;

public interface LoginService {
    Result Login(String username, String password);
}
