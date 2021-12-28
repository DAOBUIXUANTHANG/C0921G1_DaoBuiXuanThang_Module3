package service;

import model.Product;

import java.util.List;

public interface ProductService {
    List<Product> display() ;

    void save(int id ,Product product);

    void update(int id, Product product);

    void remove(int id);

    List<Product>  searchByName(String name);
}
