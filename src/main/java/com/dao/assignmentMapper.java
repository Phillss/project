package com.dao;

import com.Domains.Assignment;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface assignmentMapper {

    Assignment selectAssignById(int index);

    List<Assignment> selectAssignFromPb(String index);
}
