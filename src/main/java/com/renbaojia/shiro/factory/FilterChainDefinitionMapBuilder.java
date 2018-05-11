package com.renbaojia.shiro.factory;


import com.renbaojia.dao.PermissionsMapper;
import com.renbaojia.model.Permissions;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.LinkedHashMap;
import java.util.List;

public class FilterChainDefinitionMapBuilder {
    @Autowired
    PermissionsMapper permissionsMapper;
    public LinkedHashMap<String, String> buildFilterChainDefinitionMap() {
        LinkedHashMap<String, String> map = new LinkedHashMap<>();
        List<Permissions> permissions = permissionsMapper.selectByExample(null);
        for (Permissions permission : permissions) {
            map.put(permission.getUrl(), permission.getAuthc());
        }
        System.out.println("---------------"+permissions.size());
        return map;
    }

}
