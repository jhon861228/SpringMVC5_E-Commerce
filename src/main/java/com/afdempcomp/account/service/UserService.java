package com.afdempcomp.account.service;


import com.afdempcomp.account.model.User;

public interface UserService {
    void saveAsMember(User user);

    void saveAsUser(User user);

    User findByUsername(String username);
}
