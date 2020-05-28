package com.dao;

import com.Domains.Profile;
import com.Domains.Teacher;
import org.springframework.stereotype.Repository;

@Repository
public interface profileMapper {

    Profile selectProfile(String index);

    Teacher selectUserById(int inid);
}
