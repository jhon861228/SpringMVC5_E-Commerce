package com.afdempcomp.account.service;


import com.afdempcomp.account.model.User;
import com.afdempcomp.account.repository.RoleRepository;
import com.afdempcomp.account.repository.UserRepository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;


@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Autowired
    private SessionFactory sessionFactory;


    // @Override
    @Transactional
    public void saveAsMember(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));

        user.setRoles(new HashSet<>(roleRepository.findAll()));
        user.getRoles().remove(roleRepository.getOne(3L));
        user.getRoles().remove(roleRepository.getOne(1L));


        Session session = sessionFactory.getCurrentSession();

        session.saveOrUpdate(user);
        session.flush();
    }

    @Transactional
    public void saveAsUser(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));


        user.setRoles(new HashSet<>(roleRepository.findAll()));
        user.getRoles().remove(roleRepository.getOne(1L));
        user.getRoles().remove(roleRepository.getOne(2L));


        Session session = sessionFactory.getCurrentSession();

        session.saveOrUpdate(user);
        session.flush();
    }

    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }
}
