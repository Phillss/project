package com.dao;

import com.Domains.Sanswer;
import com.Domains.privateMark;
import com.Domains.publicMark;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface markMapper {

    List<publicMark> selectAllPub();

    List<privateMark> selectPrivate(String index);

    Sanswer selectAlone(String index);

    void updateMark(Sanswer sanswer);

    void insertPrivate(privateMark privatemark);

    void insertPublic(publicMark publicmark);

    List<privateMark> selectPrivateByPri(privateMark privatemark);

    List<publicMark> selectPublicByPub(publicMark publicmark);
}
