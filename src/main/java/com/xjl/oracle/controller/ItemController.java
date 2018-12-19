package com.xjl.oracle.controller;

import com.xjl.oracle.domain.Item;
import com.xjl.oracle.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@RequestMapping("/item")
@Controller

public class ItemController {
    @Autowired
    private ItemService itemService;
    @RequestMapping("findAll")
    public String  findAll(Map<String,Object> map,HttpSession session){
        List<Item> items = itemService.findAll();
        ServletContext servletContext = session.getServletContext();

//        map.put("items",items);
        servletContext.setAttribute("items",items);
//        session.setAttribute("items",items);
        return "user/addArticle";
    }
}
