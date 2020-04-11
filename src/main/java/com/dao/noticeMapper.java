package com.dao;

import com.Domains.Notice;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface noticeMapper {

    Notice selectNotice(String index);

    List<Notice> selectAllNoticesByTime();

    List<Notice> selectAllSystemByTime();
}
