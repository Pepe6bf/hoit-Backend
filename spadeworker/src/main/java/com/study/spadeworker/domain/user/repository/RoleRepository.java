package com.study.spadeworker.domain.user.repository;

import com.study.spadeworker.domain.user.entity.Role;
import com.study.spadeworker.domain.user.entity.constant.RoleType;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Long> {

    Role findByAuthority(RoleType roleType);
}
