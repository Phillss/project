package com.services;

import com.Domains.messageBags;
import com.Domains.messageNotices;
import com.dao.messageNoticesMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class messageServices {

    @Autowired
    messageNoticesMapper messagenoticesMapper;

    public messageBags getMessageBefore(String username){
        messageBags bags=new messageBags();
        messageNotices messageNotices=new messageNotices();
        messageNotices.setMessageTo(username);
        messageNotices.setMessageType("notice");
        bags.setNoticesCount(messagenoticesMapper.selectAllCountBefore(messageNotices));
        messageNotices.setMessageType("feedback");
        bags.setFeedBackCount(messagenoticesMapper.selectAllCountBefore(messageNotices));
        messageNotices.setMessageType("broadcast");
        bags.setBroadcastCount(messagenoticesMapper.selectAllCountBefore(messageNotices));
        messageNotices.setMessageType("systemMessage");
        bags.setSystemCount(messagenoticesMapper.selectAllCountBefore(messageNotices));
        return bags;
    }
}
