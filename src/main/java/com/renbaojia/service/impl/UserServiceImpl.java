package com.renbaojia.service.impl;

import com.renbaojia.dao.UserMapper;
import com.renbaojia.model.User;
import com.renbaojia.model.UserExample;
import com.renbaojia.service.UserService;

import com.renbaojia.utils.ImgBase64;
import com.renbaojia.utils.Md5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by smallRen on 2017/10/10.
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public User getUser(String phone) {
        UserExample userExample = new UserExample();
        UserExample.Criteria criteria = userExample.createCriteria();
        criteria.andPhoneEqualTo(phone);
        List<User> users = userMapper.selectByExample(userExample);
        return users.get(0);
    }

    @Override
    public boolean checkUser(String phone) {
        UserExample userExample = new UserExample();
        UserExample.Criteria criteria = userExample.createCriteria();
        criteria.andPhoneEqualTo(phone);
        List<User> users = userMapper.selectByExample(userExample);
        return users.size() == 1;
    }

    @Override
    public Boolean checkByOpenID(String openID) {
        UserExample userExample = new UserExample();
        UserExample.Criteria criteria = userExample.createCriteria();
        criteria.andOpenidEqualTo(openID);
        long l = userMapper.countByExample(userExample);
        return l == 1;
    }

    @Override
    public User selectByOpenID(String openID) {
        UserExample userExample = new UserExample();
        UserExample.Criteria criteria = userExample.createCriteria();
        criteria.andOpenidEqualTo(openID);
        List<User> users = userMapper.selectByExample(userExample);
        return users.get(0);
    }

    @Override
    public void insert(String phone, String saltPassword, String openID,String address,String gender,String image,String pickName ) {
        System.out.println(phone);
        System.out.println(saltPassword);
        System.out.println(openID);
        User user = new User();
        user.setPhone(phone);
        user.setUsername(pickName);
        user.setImage(image);
        user.setPassword(saltPassword);
        user.setGender(gender);
        user.setAddress(address);
        user.setOpenid(openID);
        int insert = userMapper.insert(user);
    }

    @Override
    public void updateUserInfo(User user) {
        userMapper.updateByPrimaryKeySelective(user);
    }

    @Override
    public User userById(Integer id) {
        return userMapper.selectByPrimaryKey(id);
    }

    @Override
    public boolean findPwd(String phone, String password) {
        UserExample userExample = new UserExample();
        UserExample.Criteria criteria = userExample.createCriteria();
        criteria.andPhoneEqualTo(phone);
        List<User> users = userMapper.selectByExample(userExample);
        User user = users.get(0);
        Object SaltPassword = Md5Utils.SimpleHash(phone, password);
        user.setPassword(String.valueOf(SaltPassword));
        int i = userMapper.updateByPrimaryKeySelective(user);
        return i == 1;
    }
}
