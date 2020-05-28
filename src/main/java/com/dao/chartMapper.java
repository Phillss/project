package com.dao;

import com.Domains.Scores;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface chartMapper {

    List<Scores> selectByCourseAndClass(Scores scores);
 }
