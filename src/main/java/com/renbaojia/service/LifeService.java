package com.renbaojia.service;

import com.renbaojia.model.ClassifyTextModel;
import com.renbaojia.model.Life;

import java.util.List;

/**
 * Created by smallRen on 2017/10/8.
 */
public interface LifeService {
    List<ClassifyTextModel> all();

    List<Life> baseAll();

    List<Life> allLife(int id);

    boolean select(String type);

    boolean deleteLife(Integer id);

    Life addLife(String type);

    boolean updateLife(Life life);
}
