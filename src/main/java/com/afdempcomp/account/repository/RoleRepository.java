package com.afdempcomp.account.repository;

import com.afdempcomp.account.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Long> {


    Role findByName(String name);
}
