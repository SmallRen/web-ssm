package com.renbaojia.service.impl;

import com.renbaojia.dao.MessageBoardMapper;
import com.renbaojia.model.MessageBoard;
import com.renbaojia.model.MessageBoardExample;
import com.renbaojia.service.MessageBoardService;
import com.renbaojia.utils.RelativeDateFormat;
import com.renbaojia.utils.TimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by smallRen on 2017/10/26.
 */
@Service
public class MessageBoardServiceImpl implements MessageBoardService {
    @Autowired
    MessageBoardMapper messageBoardMapper;

    @Override
    public List<MessageBoard> allMessageBoard() {
        List<MessageBoard> messageBoards = messageBoardMapper.allSelectByExample(null);
        for (MessageBoard messageBoard : messageBoards) {
            messageBoard.setDate(RelativeDateFormat.format(messageBoard.getDate()));
        }
        return messageBoards;
    }

    @Override
    public String insert(MessageBoard messageBoard) {
        String getTime = TimeUtil.gettime();
        messageBoard.setDate(getTime);
        int insert = messageBoardMapper.insert(messageBoard);
        return insert == 1 ? "true" : "false";
    }
    @Override
    public boolean deleteMessage(Integer id) {
        return messageBoardMapper.deleteByPrimaryKey(id) == 1;
    }

    @Override
    public List<MessageBoard> adminAllMessageBoard() {
        List<MessageBoard> messageBoards = messageBoardMapper.allSelectByExample(null);
        return messageBoards;
    }
}
