package com.renbaojia.service;

import com.renbaojia.model.Carousel;

import java.util.List;

/**
 * Created by smallRen on 2017/11/28.
 */
public interface CarouseService {
    List<Carousel> all();

    boolean deleteCarousel(Integer id);
}
