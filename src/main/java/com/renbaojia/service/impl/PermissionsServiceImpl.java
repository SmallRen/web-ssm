package com.renbaojia.service.impl;

import com.renbaojia.dao.PermissionsMapper;
import com.renbaojia.model.Permissions;
import com.renbaojia.model.PermissionsExample;
import com.renbaojia.service.PermissionsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by smallRen on 2017/11/30.
 */
@Service
public class PermissionsServiceImpl implements PermissionsService {
    @Autowired
    PermissionsMapper permissionsMapper;

    @Override
    public List<Permissions> allPermissions() {
        return permissionsMapper.selectByExample(null);
    }

    @Override
    public Permissions addPermissions(Permissions permissions) {
        permissionsMapper.insertSelective(permissions);
        PermissionsExample permissionsExample = new PermissionsExample();
        PermissionsExample.Criteria criteria = permissionsExample.createCriteria();
        criteria.andUrlEqualTo(permissions.getUrl());
        return permissionsMapper.selectByExample(permissionsExample).get(0);
    }

    @Override
    public boolean updatePermissions(Permissions permissions) {
        return permissionsMapper.updateByPrimaryKeySelective(permissions) == 1;


    }

    @Override
    public boolean deletePermissions(Integer id) {
        return permissionsMapper.deleteByPrimaryKey(id) == 1;
    }
}
