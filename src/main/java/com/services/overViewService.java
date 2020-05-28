package com.services;

import com.Domains.Assignment;
import com.Domains.ClassAssoAssi;
import com.Domains.OverView;
import com.dao.assignmentMapper;
import com.dao.classAssoWorkMapper;
import javafx.scene.effect.Blend;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.LinkedList;
import java.util.List;

@Service //班级试题概览
public class overViewService {

    @Autowired
    classAssoWorkMapper classassoworkmapper;

    @Autowired
    assignmentMapper assignmentmapper;

    public OverView overviews(String selid){
        ClassAssoAssi classassoassi=classassoworkmapper.remarkOverView(Integer.parseInt(selid));
        int assignId=Integer.parseInt(classassoassi.getClassAssoAssiWork());
        Assignment assignment=assignmentmapper.selectAssignById(assignId);
        String[] shortQues=assignment.getAssignmentShort().split(",");
        String[] chooses=assignment.getAssignmentChoice().split(",");
        String[] corrateC=classassoworkmapper.selectCorrateByc(chooses);
        String[] corrateS=classassoworkmapper.selectCorrateBys(shortQues);
        OverView overvies=new OverView(chooses.length,shortQues.length,
        classassoassi.getClassAssoAssiSubNum(),classassoassi.getClassAssoAssiClNum(),
                chooses,shortQues,corrateC,corrateS);
        return overvies;
    }
}
