package com.afdempcomp.account.service;

import com.afdempcomp.account.model.User;
import org.springframework.transaction.annotation.Transactional;

public interface UserService {
    @Transactional
    void save(User user);

    User findByUsername(String username);
}
