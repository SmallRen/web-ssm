package com.renbaojia.service;

import com.renbaojia.model.ClassifyTextModel;
import com.renbaojia.model.Exception;

import java.util.List;

/**
 * Created by smallRen on 2017/10/8.
 */
public interface ExceptionService {
    List<ClassifyTextModel> all();

    List<Exception> baseAll();

    boolean deleteException(Integer id);

    Exception addException(String type);

    boolean updateException(Exception e);
}
