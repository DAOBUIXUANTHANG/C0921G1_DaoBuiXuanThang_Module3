package responsitory;

import model.Product;

import java.util.List;

public interface IProductReponsitory {
    List<Product> findAll();

    Product findByid(int id);

    void save(Product product);

    void update(int id, Product product);

    void remove(int id);

    List<Product>  searchByName(String name);
}
