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

    User getUserById(int id);

    void insertUserStore(User user) throws SQLException;

    void addUserTransaction(User user, int[] permision);

    //Thực thi SQL không sử dụng Transaction

    public void insertUpdateWithoutTransaction();

    //Thực thi SQL có sử dụng Transaction
    public void insertUpdateUseTransaction();
}