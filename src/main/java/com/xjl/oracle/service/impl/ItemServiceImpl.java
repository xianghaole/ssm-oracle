package com.xjl.oracle.service.impl;

import com.xjl.oracle.dao.ItemMapper;
import com.xjl.oracle.domain.Item;
import com.xjl.oracle.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ItemServiceImpl implements ItemService {
    @Autowired
    private ItemMapper itemMapper;
    @Override
    public List<Item> findAll() {
        return itemMapper.findAll();
    }
}
