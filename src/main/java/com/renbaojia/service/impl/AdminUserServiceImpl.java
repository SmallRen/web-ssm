package com.renbaojia.service.impl;

import com.renbaojia.dao.AdminMapper;
import com.renbaojia.model.Admin;
import com.renbaojia.model.AdminExample;
import com.renbaojia.service.AdminUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by smallRen on 2017/11/2.
 */
@Service
public class AdminUserServiceImpl implements AdminUserService {
    @Autowired
    AdminMapper adminMapper;
    @Override
    public Admin getUser(String username) {
        AdminExample adminExample=new AdminExample();
        AdminExample.Criteria criteria = adminExample.createCriteria();
        criteria.andUsernameEqualTo(username);
        List<Admin> admins = adminMapper.selectByExample(adminExample);
        return admins.get(0);
    }

    @Override
    public boolean checkUser(String username) {
        AdminExample adminExample=new AdminExample();
        AdminExample.Criteria criteria = adminExample.createCriteria();
        criteria.andUsernameEqualTo(username);
        List<Admin> admins = adminMapper.selectByExample(adminExample);
        return admins.size() == 1;
    }
}
