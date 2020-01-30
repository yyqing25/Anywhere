package cn.anywhere.controller;

import cn.anywhere.pojo.Route;
import cn.anywhere.service.RouteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/route")
public class RouteController {
    @Autowired
    private RouteService routeService = null;

    @ResponseBody
    @RequestMapping("/routelist")
    public List<Route> selectAll(){
        List<Route> routes = routeService.selectAll();
        System.out.println(routes);
        return routes;
    }
}
