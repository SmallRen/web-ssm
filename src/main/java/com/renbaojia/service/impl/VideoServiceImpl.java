package com.renbaojia.service.impl;

import com.renbaojia.dao.VideoMapper;
import com.renbaojia.model.Video;
import com.renbaojia.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by smallRen on 2017/11/28.
 */
@Service
public class VideoServiceImpl implements VideoService {
    @Autowired
    VideoMapper videoMapper;

    @Override
    public void insert(Integer id, String s, String originalFilename) {
        Video video = new Video();
        video.setvScId(id);
        video.setvPath(s);
        video.setvName(originalFilename);
        videoMapper.insertSelective(video);
    }
}
