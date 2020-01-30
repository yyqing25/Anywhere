package cn.anywhere.controller;

import cn.anywhere.pojo.User;
import cn.anywhere.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService = null;

    @RequestMapping("/testse")
    public String selectOne(){
        System.out.println("进入到controller...");
        User user = userService.selectOne(1);
        System.out.println(user);
        return "test";
    }

    @RequestMapping("testacc")
    public void access(){
        System.out.println("进入到controller...");
    }


    @ResponseBody
    @RequestMapping("/testajax")
    public User testAjax(){
        User user = userService.selectOne(1);
        System.out.println(user);
        return user;
    }
}
