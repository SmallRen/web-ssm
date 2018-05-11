package com.renbaojia.service.impl;

import com.renbaojia.dao.ExceptionMapper;
import com.renbaojia.model.ClassifyTextModel;
import com.renbaojia.model.Exception;
import com.renbaojia.model.ExceptionExample;
import com.renbaojia.service.ExceptionService;
import com.renbaojia.utils.ColorUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by smallRen on 2017/10/8.
 */
@Service
public class ExceptionServiceImpl implements ExceptionService {
    @Autowired
    ExceptionMapper exceptionMapper;

    @Override
    public List<ClassifyTextModel> all() {
        List<ClassifyTextModel> exceptionList = new ArrayList<>();
        List<Exception> exceptions = exceptionMapper.selectByExample(null);
        for (int i = 0; i < exceptions.size(); i++) {
            exceptionList.add(i, new ClassifyTextModel(exceptions.get(i).getId(), ColorUtils.getRandColor(), exceptions.get(i).getType()));
        }
        return exceptionList;
    }

    @Override
    public List<Exception> baseAll() {
        return exceptionMapper.selectByExample(null);
    }

    @Override
    public boolean deleteException(Integer id) {
        return exceptionMapper.deleteByPrimaryKey(id) == 1;
    }

    @Override
    public Exception addException(String type) {
        Exception exception = new Exception();
        exception.setType(type);
        if (exceptionMapper.insertSelective(exception) == 1) {
            ExceptionExample exceptionExample = new ExceptionExample();
            ExceptionExample.Criteria criteria = exceptionExample.createCriteria();
            criteria.andTypeEqualTo(type);
            return exceptionMapper.selectByExample(exceptionExample).get(0);
        }
        return null;
    }

    @Override
    public boolean updateException(Exception e) {

        return exceptionMapper.updateByPrimaryKey(e) == 1;
    }
}
