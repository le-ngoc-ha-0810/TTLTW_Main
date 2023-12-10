package com.fit.nlu.DHHCeramic.services;

import com.fit.nlu.DHHCeramic.model.Product;

import java.util.List;

public interface ProductService {
    void insert (Product product);
    void edit (Product product);
    void delete (Product product);
    Product get(int id);
    Product get(String name);
    List<Product> getAll();
    List<Product> search(String name);
}
