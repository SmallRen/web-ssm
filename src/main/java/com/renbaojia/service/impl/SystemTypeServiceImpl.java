package com.renbaojia.service.impl;


import com.renbaojia.dao.SystemTypeMapper;
import com.renbaojia.model.ClassifyTextModel;
import com.renbaojia.model.SystemType;
import com.renbaojia.model.SystemTypeExample;
import com.renbaojia.service.SystemTypeService;
import com.renbaojia.utils.ColorUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by smallRen on 2017/10/8.
 */
@Service
public class SystemTypeServiceImpl implements SystemTypeService {
    @Autowired
    SystemTypeMapper systemTypeMapper;

    @Override
    public List<ClassifyTextModel> all() {
        List<ClassifyTextModel> classifyTextModelList = new ArrayList<>();
        List<SystemType> systemTypeList = systemTypeMapper.selectByExample(null);
        for (int i = 0; i < systemTypeList.size(); i++) {
            classifyTextModelList.add(i, new ClassifyTextModel(systemTypeList.get(i).getId(), ColorUtils.getRandColor(), systemTypeList.get(i).getType()));
        }
        return classifyTextModelList;
    }

    @Override
    public List<SystemType> baseAll() {
        return systemTypeMapper.selectByExample(null);
    }

    @Override
    public boolean deleteSystem(Integer id) {
        return systemTypeMapper.deleteByPrimaryKey(id) == 1;
    }

    @Override
    public SystemType addSystem(String type) {
        SystemType systemType = new SystemType();
        systemType.setType(type);
        if (systemTypeMapper.insertSelective(systemType) == 1) {
            SystemTypeExample systemTypeExample = new SystemTypeExample();
            SystemTypeExample.Criteria criteria = systemTypeExample.createCriteria();
            criteria.andTypeEqualTo(type);
            List<SystemType> systemTypeList = systemTypeMapper.selectByExample(systemTypeExample);
            return systemTypeList.get(0);
        }
        return null;
    }

    @Override
    public boolean updateSystem(SystemType systemType) {
        return systemTypeMapper.updateByPrimaryKeySelective(systemType) == 1;
    }

}
