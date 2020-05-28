package com.dao;

import com.Domains.messageNotices;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface messageNoticesMapper {

    int selectAllCountBefore(messageNotices message);

    List<messageNotices> selectAllMessagesByReceiver(String index);

    List<messageNotices> selectAllNoticesByReceiver(String index);

    List<messageNotices> selectAllFeedbackByReceiver(String index);

    List<messageNotices> selectAllBroadcastByReceiver(String index);

    List<messageNotices> selectAllSystemByReceiver(String index);

    List<messageNotices> selectAfterTest(String index);

}
