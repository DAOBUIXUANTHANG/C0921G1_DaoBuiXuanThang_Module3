package com.codegym.dao;

import com.codegym.model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserDAO {
    public void insertUser(User user) throws SQLException;

    public User selectUser(int id);

    public List<User> selectAllUsers();

    public boolean deleteUser(int id) throws SQLException;

    public boolean updateUser(User user) throws SQLException;

    // bai tap

    // Gọi Stored Procedures từ JDBC sử dụng CallableStatement cho chức năng hiển thị danh sách users
    public List<User> displayAll();

    // Gọi Stored Procedures từ JDBC sử dụng CallableStatement cho chức năng sửa thông tin user
    public boolean updateUserSQL(int id , String name, String email, String country ) throws SQLException;

    // Gọi Stored Procedures từ JDBC sử dụng CallableStatement cho chức năng xoá user
    public boolean deleteUserSQL(int id) throws SQLException;

}
