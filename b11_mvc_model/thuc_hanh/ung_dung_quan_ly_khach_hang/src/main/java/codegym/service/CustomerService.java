package codegym.service;

import codegym.model.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> findALL();

    void save(Customer customer);

    Customer findBy(int id);

    void updateCus(int id, Customer customer);

    void remove(int id);
}
