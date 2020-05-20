package com.dao;

import com.Domains.ClassAssoAssi;

import java.util.List;

public interface classAssoWorkMapper {

    String selectWorkID(String index);

    List<ClassAssoAssi> selectWorkingByDesc(String index);

    List<ClassAssoAssi> selectWorkedByDesc(String index);

    List<String> selectAllClass(String index);

    List<ClassAssoAssi> selectClassWorks(ClassAssoAssi classassoassi);

    ClassAssoAssi remarkOverView(int index);
}
