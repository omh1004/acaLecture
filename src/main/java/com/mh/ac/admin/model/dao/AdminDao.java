package com.mh.ac.admin.model.dao;

import com.mh.ac.admin.model.dto.Admin;
import org.apache.ibatis.session.SqlSession;

public interface AdminDao {

    Admin findAdminById(SqlSession session, String username);

}
