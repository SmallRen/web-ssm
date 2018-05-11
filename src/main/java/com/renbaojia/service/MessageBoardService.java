package com.renbaojia.service;

import com.renbaojia.model.MessageBoard;

import java.util.List;

/**
 * Created by smallRen on 2017/10/26.
 */
public interface MessageBoardService {
    List<MessageBoard> allMessageBoard();

    List<MessageBoard> adminAllMessageBoard();

    String insert(MessageBoard messageBoard);

    boolean deleteMessage(Integer id);
}
