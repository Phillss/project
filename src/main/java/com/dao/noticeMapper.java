package com.dao;

import com.Domains.Notice;
import org.springframework.stereotype.Repository;

@Repository
public interface noticeMapper {

    Notice selectNotice(String index);
}
