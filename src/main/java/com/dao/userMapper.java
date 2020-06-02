package com.dao;

import com.Domains.Teacher;
import com.Domains.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface userMapper{

    User selectAUserByName(String index);

    User selectDistinctByName(String index);

    List<String> selectTestByname(String index);

    String selectFromTeacher(String index);

    int selectFromAssi(String index);

    int selectFromAsi(String index);

    String[] selectNumByStuClass(String index);

    List<Teacher> selectAllTea();
}
