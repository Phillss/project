package com.dao;

import com.Domains.Assignment;

import java.util.List;

public interface assignmentMapper {

    Assignment selectAssignById(int index);

    List<Assignment> selectAssignFromPb(String index);
}
