package com.renbaojia.service;

import com.renbaojia.model.Permissions;

import java.util.List;

/**
 * Created by smallRen on 2017/11/30.
 */
public interface PermissionsService {
    List<Permissions> allPermissions();

    Permissions addPermissions(Permissions permissions);

    boolean updatePermissions(Permissions permissions);

    boolean deletePermissions(Integer id);
}
