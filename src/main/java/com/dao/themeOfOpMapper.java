package com.dao;

import com.Domains.Themeofoption;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface themeOfOpMapper {

    List<Themeofoption> selectDistinOption(int[] ints);
}
