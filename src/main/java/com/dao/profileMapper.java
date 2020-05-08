package com.dao;

import com.Domains.Profile;
import com.Domains.Teacher;

public interface profileMapper {

    Profile selectProfile(String index);

    Teacher selectUserById(int inid);
}
