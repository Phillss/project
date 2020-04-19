package com.services;

import com.Domains.Notice;
import com.Domains.User;
import com.Domains.messageBags;
import com.dao.noticeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.List;

@Service
public class homePageOverview {

    public void prepareAction(Model model, User user,noticeMapper noticemapper,messageServices messageservices){

            List<Notice> notices=noticemapper.selectAllNoticesByTime();
            model.addAttribute("message",notices);
            List<Notice> noticeSystem=noticemapper.selectAllSystemByTime();
            model.addAttribute("systemMessage",noticeSystem);
            messageBags bags =messageservices.getMessageBefore(user.getUserName());
            model.addAttribute("count",bags);

    }
}
