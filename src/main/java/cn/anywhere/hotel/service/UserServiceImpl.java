package cn.anywhere.hotel.service;

import cn.anywhere.hotel.dao.UserMapper;
import cn.anywhere.hotel.pojo.User;
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
