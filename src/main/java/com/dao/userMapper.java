package com.dao;

import com.Domains.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface userMapper {

    List<User> selectAUserByName(String index);

    User selectDistinctByName(String index);

    void updateUser(User user);
}
