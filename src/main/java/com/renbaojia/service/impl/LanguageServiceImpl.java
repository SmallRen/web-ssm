package com.renbaojia.service.impl;

import com.renbaojia.dao.LanguageMapper;
import com.renbaojia.model.ClassifyTextModel;
import com.renbaojia.model.Language;
import com.renbaojia.model.LanguageExample;
import com.renbaojia.service.LanguageService;
import com.renbaojia.utils.ColorUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by smallRen on 2017/10/8.
 */
@Service
public class LanguageServiceImpl implements LanguageService {
    @Autowired
    LanguageMapper languageMapper;

    @Override
    public List<ClassifyTextModel> all() {
        List<ClassifyTextModel> LanguageList = new ArrayList<>();
        List<Language> classifies = languageMapper.selectByExample(null);
        for (int i = 0; i < classifies.size(); i++) {
            LanguageList.add(i, new ClassifyTextModel(classifies.get(i).getId(), ColorUtils.getRandColor(), classifies.get(i).getType()));
        }
        return LanguageList;
    }

    @Override
    public List<Language> baseAll() {
        return languageMapper.selectByExample(null);
    }

    @Override
    public boolean deleteLanguage(Integer id) {
        return languageMapper.deleteByPrimaryKey(id) == 1;
    }

    @Override
    public Language addLanguage(String type) {
        Language language = new Language();
        language.setType(type);
        if (languageMapper.insertSelective(language) == 1) {
            LanguageExample languageExample = new LanguageExample();
            LanguageExample.Criteria criteria = languageExample.createCriteria();
            criteria.andTypeEqualTo(type);
            List<Language> languages = languageMapper.selectByExample(languageExample);
            return languages.get(0);
        }
        return null;
    }

    @Override
    public boolean updateLanguage(Language language) {
        return languageMapper.updateByPrimaryKey(language) == 1;

    }
}
