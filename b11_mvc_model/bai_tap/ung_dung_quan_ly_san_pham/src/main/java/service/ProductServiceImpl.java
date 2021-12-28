package service;

import model.Product;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService{
    private static Map<Integer , Product> productMap;

    static {
        productMap.put(1,new Product(1,"Iphone9",12.99,"nhap ngoai", "Apple"));
        productMap.put(2,new Product(2,"Iphone10",13.99,"sencond hand", "Apple"));
        productMap.put(3,new Product(3,"Iphone11",14.99,"nhap ngoai", "Apple"));
        productMap.put(4, new Product(4,"Iphone12",15.99,"nhap ngoai", "Apple"));
    }


    @Override
    public List<Product> display() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public void save(int id ,Product product) {
        productMap.put(id,product);
    }

    @Override
    public void update(int id, Product product) {

    }

    @Override
    public void remove(int id) {

    }

    @Override
    public List<Product> searchByName(String name) {
        return null;
    }
}
