package responsitory;

import model.Product;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class ProductReponsitoryImpl implements IProductReponsitory{
    public static Map<Integer, Product> productMap;

    static {
        productMap = new TreeMap<>();
        productMap.put(1, new Product(1, "Iphone X", 15.5, "White & blue", "Apple"));
        productMap.put(2, new Product(2, "Iphone 12", 15.5, "White, Red, Sea", "Apple"));
        productMap.put(3, new Product(3, "Iphone 11", 15.5, "White, Red, Sea", "Apple"));
        productMap.put(4, new Product(4, "Iphone 14 ", 15.5, "White & blue", "Apple"));
    }


    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public Product findByid(int id) {
        return productMap.get(id);
    }

    @Override
    public void save(Product product) {
        productMap.put(product.getId() , product);
    }

    @Override
    public void update(int id, Product product) {
        productMap.put(id,product);
    }

    @Override
    public void remove(int id) {
        productMap.remove(id);
    }

    @Override
    public List<Product> searchByName(String name) {

        List<Product> searchResult = new ArrayList<>();
        for(Product product : findAll()){
            if(product.getName().contains(name)){
                searchResult.add(product);
            }
        }
        return searchResult;
    }
}
