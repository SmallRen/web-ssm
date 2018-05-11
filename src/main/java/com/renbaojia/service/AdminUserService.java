package com.renbaojia.service;

import com.renbaojia.model.Admin;

/**
 * Created by smallRen on 2017/11/2.
 */
public interface AdminUserService {
    Admin getUser(String username);
    boolean checkUser(String username);
}
