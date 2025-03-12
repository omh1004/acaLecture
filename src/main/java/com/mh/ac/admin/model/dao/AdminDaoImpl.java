package com.mh.ac.admin.model.dao;

import com.mh.ac.admin.model.dto.Admin;
import org.apache.ibatis.session.SqlSession;

public class AdminDaoImpl implements AdminDao {

    @Override
    public Admin findAdminById(SqlSession session, String username) {
        return null;
    }

}
