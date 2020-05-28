package com.dao;

import com.Domains.Shortquestion;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface shortQuestionMapper {

    List<Shortquestion> selectDistinQues(int[] ints);
}
