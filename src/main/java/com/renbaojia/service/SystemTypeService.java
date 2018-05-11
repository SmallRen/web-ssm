package com.renbaojia.service;

import com.renbaojia.model.ClassifyTextModel;
import com.renbaojia.model.SystemType;

import java.util.List;

/**
 * Created by smallRen on 2017/10/8.
 */
public interface SystemTypeService {
    List<ClassifyTextModel> all();

    List<SystemType> baseAll();

    boolean deleteSystem(Integer id);

    SystemType addSystem(String type);

    boolean updateSystem(SystemType sytemType);
}
