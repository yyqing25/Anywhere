package cn.anywhere.service.Impl;

import cn.anywhere.dao.UserMapper;
import cn.anywhere.pojo.User;
import cn.anywhere.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper = null;

    @Override
    public User selectOne(int id) {
        User user = userMapper.selectOne(id);
        return user;
    }
}
