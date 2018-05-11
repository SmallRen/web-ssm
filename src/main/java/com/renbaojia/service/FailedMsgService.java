package com.renbaojia.service;

import com.renbaojia.model.FailedMsg;

import java.util.List;

/**
 * 记录发表的不良言论
 */
public interface FailedMsgService {
    /**
     * 查看拦截的数据
     * @return
     */
    List<FailedMsg> allFailedMsg();

    /**
     * 删除拦截记录
     * @param id
     */
    void delete(Integer id);

}
