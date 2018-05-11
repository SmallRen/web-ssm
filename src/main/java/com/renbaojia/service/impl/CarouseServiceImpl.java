package com.renbaojia.service.impl;

import com.renbaojia.dao.CarouselMapper;
import com.renbaojia.model.Carousel;
import com.renbaojia.service.CarouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by smallRen on 2017/11/28.
 */
@Service
public class CarouseServiceImpl implements CarouseService {
    @Autowired
    CarouselMapper carouselMapper;
    @Override
    public List<Carousel> all() {
        return carouselMapper.selectByExample(null);
    }

    @Override
    public boolean deleteCarousel(Integer id) {
        return carouselMapper.deleteByPrimaryKey(id)==1;
    }
}
