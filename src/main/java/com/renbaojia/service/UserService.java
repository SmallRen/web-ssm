package com.renbaojia.service;

import com.renbaojia.model.User;

/**
 * Created by smallRen on 2017/10/10.
 */
public interface UserService {
    User getUser(String phone);

    boolean checkUser(String phone);

    Boolean checkByOpenID(String openID);

    User selectByOpenID(String openID);

    void insert(String phone, String saltPassword, String openID, String address, String gender, String image, String pickName);

    void updateUserInfo(User user);

    User userById(Integer id);

    boolean findPwd(String phone, String password);
}
