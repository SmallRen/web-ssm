package com.renbaojia.service.impl;

import com.renbaojia.dao.PictureMapper;
import com.renbaojia.dao.SpaceContentMapper;
import com.renbaojia.dao.VideoMapper;
import com.renbaojia.model.PictureExample;
import com.renbaojia.model.SpaceContent;
import com.renbaojia.model.SpaceContentExample;
import com.renbaojia.model.VideoExample;
import com.renbaojia.service.SpaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by smallRen on 2017/11/28.
 */
@Service
public class SpaceServiceImpl implements SpaceService {
    @Autowired
    SpaceContentMapper spaceContentMapper;
    @Autowired
    PictureMapper pictureMapper;
    @Autowired
    VideoMapper videoMapper;

    @Override
    public List<SpaceContent> all() {
        return spaceContentMapper.selectByExample(null);
    }

    @Override
    public Integer insert(SpaceContent spaceContent) {
        spaceContentMapper.insertSelective(spaceContent);
        SpaceContentExample spaceContentExample = new SpaceContentExample();
        SpaceContentExample.Criteria criteria = spaceContentExample.createCriteria();
        criteria.andScDateEqualTo(spaceContent.getScDate());
        List<SpaceContent> spaceContents = spaceContentMapper.selectByExample(spaceContentExample);

        return spaceContents.get(0).getScId();
    }

    @Override
    public boolean delete(Integer id) {

        PictureExample pictureExample = new PictureExample();
        PictureExample.Criteria criteria = pictureExample.createCriteria();
        criteria.andPScIdEqualTo(id);
        pictureMapper.deleteByExample(pictureExample);
        VideoExample videoExample = new VideoExample();
        VideoExample.Criteria criteria1 = videoExample.createCriteria();
        criteria1.andVScIdEqualTo(id);
        videoMapper.deleteByExample(videoExample);
        return spaceContentMapper.deleteByPrimaryKey(id) == 1;
    }

    @Override
    public boolean spaceUpdate(SpaceContent spaceContent) {

        return spaceContentMapper.updateByPrimaryKeySelective(spaceContent)==1;
    }
}
