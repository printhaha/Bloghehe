package com.itshidu.web.service.impl;

import com.itshidu.web.dao.UserDao;
import com.itshidu.web.entity.User;
import com.itshidu.web.service.RegisterService;
import com.itshidu.web.util.DigestHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Service
public class RegisterServiceImp implements RegisterService {
    @Autowired UserDao _userDao;
    @Override
    public Map<String, Object> register(User user) {
        Map<String,Object> map = new HashMap();
        User t = _userDao.findByUsername(user.getUsername());
        if (t!=null){
            map.put("code",100);
            return map;
        }
        user.setAvatar("default.jpg");
        user.setCreateTime(new Date());
        user.setStatus(0);
       // user.setSalt(UUID.randomUUID().toString());
       // DigestHelper.md5();
        _userDao.save(user);
        return null;
    }
}
