package com.renbaojia.service.impl;

import com.renbaojia.dao.SpaceContentMapper;
import com.renbaojia.model.SpaceContent;
import com.renbaojia.service.SpaceContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by smallRen on 2017/10/30.
 */
@Service
public class SpaceContentServiceImpl implements SpaceContentService {
@Autowired
    SpaceContentMapper spaceContentMapper;
    @Override
    public List<SpaceContent> all() {
        return   spaceContentMapper.allSelectByExample(null);

    }
}
