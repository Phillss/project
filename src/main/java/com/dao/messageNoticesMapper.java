package com.dao;

import com.Domains.messageNotices;

import java.util.List;

public interface messageNoticesMapper {

    int selectAllCountBefore(String index);

    List<messageNotices> selectAllMessagesByReceiver(String index);

    List<messageNotices> selectAllNoticesByReceiver(String index);

    List<messageNotices> selectAllFeedbackByReceiver(String index);

    List<messageNotices> selectAllBroadcastByReceiver(String index);

    List<messageNotices> selectAllSystemByReceiver(String index);

}
