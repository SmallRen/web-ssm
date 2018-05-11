package com.renbaojia.service;

import com.renbaojia.model.ClassifyTextModel;
import com.renbaojia.model.IDE;

import java.util.List;

/**
 * Created by smallRen on 2017/10/8.
 */
public interface IdeService {
    List<ClassifyTextModel> all();

    List<IDE> baseAll();


    boolean deleteIde(Integer id);

    IDE addIde(String type);

    boolean updateIde(IDE ide);
}
