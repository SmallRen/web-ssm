package com.renbaojia.service;

import com.renbaojia.model.SpaceContent;

import java.util.List;

/**
 * Created by smallRen on 2017/11/28.
 */
public interface SpaceService {
    List<SpaceContent> all();

    Integer insert(SpaceContent spaceContent);

    boolean delete(Integer id);

    boolean spaceUpdate(SpaceContent spaceContent);
}
