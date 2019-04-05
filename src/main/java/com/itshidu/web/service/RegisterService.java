package com.itshidu.web.service;

import com.itshidu.web.entity.User;

import java.util.Map;

public interface RegisterService {

    Map<String,Object> register(User user);
}
