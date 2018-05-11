package com.renbaojia.service.impl;

import com.renbaojia.dao.*;
import com.renbaojia.model.*;
import com.renbaojia.model.Exception;
import com.renbaojia.service.LifeService;
import com.renbaojia.utils.ColorUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by smallRen on 2017/10/8.
 */
@Service
public class LifeServiceImpl implements LifeService {
    @Autowired
    LifeMapper lifeMapper;
    @Autowired
    IDEMapper ideMapper;
    @Autowired
    ExceptionMapper exceptionMapper;
    @Autowired
    LanguageMapper languageMapper;
    @Autowired
    SystemTypeMapper sytemTypeMapper;

    @Override
    public List<ClassifyTextModel> all() {
        List<ClassifyTextModel> lifeList = new ArrayList<>();
        List<Life> lives = lifeMapper.selectByExample(null);
        for (int i = 0; i < lives.size(); i++) {
            lifeList.add(i, new ClassifyTextModel(lives.get(i).getId(), ColorUtils.getRandColor(), lives.get(i).getType()));
        }
        return lifeList;
    }

    @Override
    public List<Life> baseAll() {
        return lifeMapper.selectByExample(null);
    }

    @Override
    public List<Life> allLife(int id) {
        if (id == 1) {
            return lifeMapper.selectByExample(null);
        } else {
            List<IDE> ides = ideMapper.selectByExample(null);
            List<Exception> exceptions = exceptionMapper.selectByExample(null);
            List<Language> languages = languageMapper.selectByExample(null);
            List<SystemType> sytemTypes = sytemTypeMapper.selectByExample(null);
            List<Life> lifeList = new ArrayList<>();
            for (int i = 0; i < ides.size(); i++) {
                lifeList.add(new Life(ides.get(i).getId(), ides.get(i).getType()));
            }
            for (int i = 0; i < exceptions.size(); i++) {
                lifeList.add(new Life(exceptions.get(i).getId(), exceptions.get(i).getType()));
            }
            for (int i = 0; i < languages.size(); i++) {
                lifeList.add(new Life(languages.get(i).getId(), languages.get(i).getType()));
            }
            for (int i = 0; i < sytemTypes.size(); i++) {
                lifeList.add(new Life(sytemTypes.get(i).getId(), sytemTypes.get(i).getType()));
            }
            return lifeList;
        }
    }

    @Override
    public boolean select(String type) {
        LifeExample lifeExample = new LifeExample();
        LifeExample.Criteria criteria = lifeExample.createCriteria();
        criteria.andTypeEqualTo(type);
        List<Life> lives = lifeMapper.selectByExample(lifeExample);
        return lives.size() == 1;
    }

    @Override
    public boolean deleteLife(Integer id) {
        int i = lifeMapper.deleteByPrimaryKey(id);
        return i == 1;
    }

    @Override
    public Life addLife(String type) {
        Life life = new Life();
        life.setType(type);
        if (lifeMapper.insertSelective(life) == 1) {
            LifeExample lifeExample = new LifeExample();
            LifeExample.Criteria criteria = lifeExample.createCriteria();
            criteria.andTypeEqualTo(type);
            return lifeMapper.selectByExample(lifeExample).get(0);

        }
        return null;
    }


    @Override
    public boolean updateLife(Life life) {
        return lifeMapper.updateByPrimaryKeySelective(life) == 1;
    }

}
