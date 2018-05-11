package com.renbaojia.service.impl;

import com.renbaojia.dao.IDEMapper;
import com.renbaojia.model.ClassifyTextModel;
import com.renbaojia.model.IDE;
import com.renbaojia.model.IDEExample;
import com.renbaojia.service.IdeService;
import com.renbaojia.utils.ColorUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by smallRen on 2017/10/8.
 */
@Service
public class IdeServiceImpl implements IdeService {
    @Autowired
    IDEMapper ideMapper;

    @Override
    public List<ClassifyTextModel> all() {
        List<ClassifyTextModel> ideList = new ArrayList<>();
        List<IDE> ides = ideMapper.selectByExample(null);
        for (int i = 0; i < ides.size(); i++) {
            ideList.add(i, new ClassifyTextModel(ides.get(i).getId(), ColorUtils.getRandColor(), ides.get(i).getType()));
        }
        return ideList;
    }

    @Override
    public List<IDE> baseAll() {
        return ideMapper.selectByExample(null);
    }

    @Override
    public boolean deleteIde(Integer id) {
        return ideMapper.deleteByPrimaryKey(id) == 1;
    }

    @Override
    public IDE addIde(String type) {
        IDE ide = new IDE();
        ide.setType(type);
        if (ideMapper.insertSelective(ide) == 1) {
            IDEExample ideExample = new IDEExample();
            IDEExample.Criteria criteria = ideExample.createCriteria();
            criteria.andTypeEqualTo(type);
            List<IDE> ides = ideMapper.selectByExample(ideExample);
            return ides.get(0);
        }
        return null;
    }

    @Override
    public boolean updateIde(IDE ide) {
        return ideMapper.updateByPrimaryKey(ide)==1;
    }
}
