package cn.anywhere.service.Impl;

import cn.anywhere.dao.RouteMapper;
import cn.anywhere.pojo.Route;
import cn.anywhere.service.RouteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class RouteServiceImpl implements RouteService {
    @Autowired
    private RouteMapper routeMapper = null;

    @Override
    public List<Route> selectAll() {
        List<Route> routes = routeMapper.selectAll();
        return routes;
    }
}
