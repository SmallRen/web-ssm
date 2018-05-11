package com.renbaojia.service.impl;

import com.renbaojia.dao.PictureMapper;
import com.renbaojia.model.Picture;
import com.renbaojia.service.PictureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by smallRen on 2017/11/28.
 */
@Service
public class PictureServiceImpl implements PictureService {
    @Autowired
    PictureMapper pictureMapper;

    @Override
    public void insert(Integer id, String s, String originalFilename) {
        Picture picture = new Picture();
        picture.setpScId(id);
        picture.setpPath(s);
        picture.setpName(originalFilename);
        pictureMapper.insertSelective(picture);
    }
}
