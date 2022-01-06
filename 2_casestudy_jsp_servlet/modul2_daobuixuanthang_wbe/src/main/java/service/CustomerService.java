package service;

import model.customer.Customer;
import resources.customer.CustomerRespositoryImp;
import resources.customer.ICustomerRespository;

import java.sql.SQLException;
import java.util.List;

public class CustomerService implements ICustomerService{

    private ICustomerRespository iCustomerRespository = new CustomerRespositoryImp();

    @Override
    public void insertCustomer(Customer customer) throws SQLException {
        this.iCustomerRespository.insertCustomer(customer);
    }

    @Override
    public Customer selectCustomer(int customerID) {
        return this.iCustomerRespository.selectCustomer(customerID);
    }

    @Override
    public List<Customer> selectAllCustomers() {
        return this.iCustomerRespository.selectAllCustomers();
    }

    @Override
    public boolean deleteCustomer(int customerID) throws SQLException {
        return this.iCustomerRespository.deleteCustomer(customerID);
    }

    @Override
    public boolean updateCustomer(Customer customer) throws SQLException {
        return this.iCustomerRespository.updateCustomer(customer);
    }
}
