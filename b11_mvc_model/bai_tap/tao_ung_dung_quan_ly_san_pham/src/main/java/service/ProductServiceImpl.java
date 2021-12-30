package service;

import model.Product;
import responsitory.IProductReponsitory;
import responsitory.ProductReponsitoryImpl;

import java.util.List;

public class ProductServiceImpl implements ProductService{
    private IProductReponsitory productReponsitory = new ProductReponsitoryImpl();

    @Override
    public List<Product> findAll() {
        return this.productReponsitory.findAll();
    }

    @Override
    public Product findByid(int id) {
        return this.productReponsitory.findByid(id);
    }

    @Override
    public void save(Product product) {
        this.productReponsitory.save(product);
    }

    @Override
    public void update(int id, Product product) {
        this.productReponsitory.update(id,product);
    }

    @Override
    public void remove(int id) {
        this.productReponsitory.remove(id);
    }

    @Override
    public List<Product> searchByName(String name) {
        return this.productReponsitory.searchByName(name);
    }
}
