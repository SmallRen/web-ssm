package com.renbaojia.service.impl;

import com.renbaojia.dao.FailedMsgMapper;
import com.renbaojia.model.FailedMsg;
import com.renbaojia.service.FailedMsgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class FailedMsgServiceImpl implements FailedMsgService {

    @Autowired
    FailedMsgMapper failedMsgMapper;

    /**
     * 查看拦截的数据
     * @return
     */
    @Override
    public List<FailedMsg> allFailedMsg() {
        return failedMsgMapper.selectByExampleUserInfo(null);
    }

    /**
     * 删除拦截记录
     * @param id
     */
    @Override
    public void delete(Integer id) {
        failedMsgMapper.deleteByPrimaryKey(id);
    }

}
