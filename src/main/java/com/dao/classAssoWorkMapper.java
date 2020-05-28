package com.dao;

import com.Domains.ClassAssoAssi;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface classAssoWorkMapper {

    String selectWorkID(String index);

    List<ClassAssoAssi> selectWorkingByDesc(String index);

    List<ClassAssoAssi> selectWorkedByDesc(String index);

    List<String> selectAllClass(String index);

    List<ClassAssoAssi> selectClassWorks(ClassAssoAssi classassoassi);

    ClassAssoAssi remarkOverView(int index);

    String[] selectCorrateByc(String[] index);

    String[] selectCorrateBys(String[] index);
}
