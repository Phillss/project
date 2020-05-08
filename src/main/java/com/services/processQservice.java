package com.services;

import com.Domains.Shortquestion;
import com.dao.assignmentMapper;
import com.dao.classAssoWorkMapper;
import com.dao.shortQuestionMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;

@Service
public class processQservice {

    @Autowired
    classAssoWorkMapper classassoworkmapper;

    @Autowired
    assignmentMapper assignmentmapper;

    @Autowired
    shortQuestionMapper shortquestionmapper;


    public List<Shortquestion> proceeQuestion(String classes){
        String workID=classassoworkmapper.selectWorkID(classes);
        String workDetails=assignmentmapper.selectAssignById(Integer.parseInt(workID)).getAssignmentShort();
        String[] slist=workDetails.split(",");
        int count=slist.length;
        int[] counts=new int[count];
        int i=0;
        for(String s:slist){
            counts[i++]=Integer.parseInt(s);
        }
        List<Shortquestion> lists= shortquestionmapper.selectDistinQues(counts);
        return lists;
    }
}
