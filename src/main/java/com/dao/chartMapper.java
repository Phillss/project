package com.dao;

import com.Domains.Scores;

import java.util.List;

public interface chartMapper {

    List<Scores> selectByCourseAndClass(Scores scores);
 }
