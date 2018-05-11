package com.renbaojia.service;

import com.renbaojia.model.ClassifyTextModel;
import com.renbaojia.model.Language;

import java.util.List;

/**
 * Created by smallRen on 2017/10/8.
 */
public interface LanguageService {
    List<ClassifyTextModel> all();

    List<Language> baseAll();

    boolean deleteLanguage(Integer id);

    Language addLanguage(String type);

    boolean updateLanguage(Language language);
}
