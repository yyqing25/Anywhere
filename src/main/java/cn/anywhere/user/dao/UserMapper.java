package cn.anywhere.user.dao;

import cn.anywhere.user.pojo.User;

public interface UserMapper {
    public User selectOne(int id);
}
