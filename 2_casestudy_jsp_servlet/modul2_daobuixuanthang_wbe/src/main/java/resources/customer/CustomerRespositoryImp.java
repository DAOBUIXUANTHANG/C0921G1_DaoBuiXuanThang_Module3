package resources.customer;

import model.customer.Customer;
import model.customer.CustomerType;
import connect.BaseResponsitory;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerRespositoryImp implements ICustomerRespository{
    private static final String INSERT_CUSTOMER_SQL = "insert into customer (customer_type_id,customer_name,customer_birthday,customer_gender,customer_id_card,customer_phone,customer_email,customer_adress)\n" +
            "values(?,?,?,?,?,?,?,?)";

    private static final String DELETE_CUSTOMER_SQL = "delete from customer \n" +
            "where customer_id = ?";

    private static final String SELECT_ALL_CUSTOMERS ="select C.customer_id,CT.customer_type_id ,CT.customer_type_name , C.customer_name, C.customer_birthday, C.customer_gender , C.customer_id_card, C.customer_phone, C.customer_email, C.customer_adress \n" +
            "from customer C join customer_type CT on C.customer_type_id = CT.customer_type_id \n" +
            "order by C.customer_id";

    private static final String SELECT_CUSTOMER_BY_ID = "select C.customer_id, CT.customer_type_id ,CT.customer_type_name , C.customer_name, C.customer_birthday, C.customer_gender , C.customer_id_card, C.customer_phone, C.customer_email, C.customer_adress \n" +
            "from customer C join customer_type CT on C.customer_type_id = CT.customer_type_id \n" +
            "WHERE C.customer_id = ?";

    private static final String UPDATE_CUSTOMER_SQL ="update customer\n" +
            "set customer_type_id = ?, customer_name = ? ,customer_birthday = ? ,customer_gender = ? , customer_id_card =?, " +
            "customer_phone = ? ,customer_email= ?, customer_adress =?\n" +
            "where customer_id = ?";




    @Override
    public void insertCustomer(Customer customer) throws SQLException {
        try {
            PreparedStatement preparedStatement = BaseResponsitory.connection.prepareStatement(INSERT_CUSTOMER_SQL);
            preparedStatement.setInt(1,customer.getCusType().getCustomerTypeID());
            preparedStatement.setString(2,customer.getCusName());
            preparedStatement.setDate(3,customer.getDateOfBirth());
            preparedStatement.setBoolean(4,customer.isGender());
            preparedStatement.setString(5,customer.getCusIDCard());
            preparedStatement.setString(6,customer.getPhoneNumber());
            preparedStatement.setString(7,customer.getEmail());
            preparedStatement.setString(8,customer.getAddress());

            preparedStatement.executeUpdate();
        } catch (SQLException exception){
            exception.printStackTrace();
        }



    }

    @Override
    public Customer selectCustomer(int customerID) {
        Customer customer = null;

        try {
            PreparedStatement preparedStatement = BaseResponsitory.connection.prepareStatement(SELECT_CUSTOMER_BY_ID);
            preparedStatement.setInt(1, customerID);

            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int customerTypeID = resultSet.getInt("customer_type_id");
                String customerTypeName = resultSet.getString("customer_type_name");

                CustomerType customerType = new CustomerType(customerTypeID,customerTypeName);

                String customerName = resultSet.getString("customer_name");
                Date dateOfBirth = resultSet.getDate("customer_birthday");
                Boolean gender = resultSet.getBoolean("customer_gender");
                String identityNumber = resultSet.getString("customer_id_card");
                String phoneNumber = resultSet.getString("customer_phone");
                String email = resultSet.getString("customer_email");
                String address = resultSet.getString("customer_adress");

                customer = new Customer(customerID,customerType,customerName,dateOfBirth,gender,identityNumber,phoneNumber,email,address);

            }


        } catch (SQLException exception) {
            exception.printStackTrace();
        }
        return customer;
    }

    @Override
    public List<Customer> selectAllCustomers() {
        List<Customer> customers = new ArrayList<>();

        try {
            PreparedStatement preparedStatement = BaseResponsitory.connection.prepareStatement(SELECT_ALL_CUSTOMERS);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                int customerID = resultSet.getInt("customer_id");

                int customerTypeID = resultSet.getInt("customer_type_id");
                String customerTypeName = resultSet.getString("customer_type_name");

                CustomerType customerType = new CustomerType(customerTypeID,customerTypeName);

                String customerName = resultSet.getString("customer_name");
                Date dateOfBirth = resultSet.getDate("customer_birthday");
                Boolean sex = resultSet.getBoolean("customer_gender");
                String identityNumber = resultSet.getString("customer_id_card");
                String phoneNumber = resultSet.getString("customer_phone");
                String email = resultSet.getString("customer_email");
                String address = resultSet.getString("customer_adress");

                customers.add(new Customer(customerID,customerType,customerName,dateOfBirth,sex,identityNumber,phoneNumber,email,address));
            }
        } catch (SQLException exception) {
            exception.printStackTrace();
        }

        return customers;
    }


    @Override
    public boolean deleteCustomer(int customerID) throws SQLException {
        boolean rowDeleted = false;

        try {
            PreparedStatement preparedStatement = BaseResponsitory.connection.prepareStatement(DELETE_CUSTOMER_SQL);
            preparedStatement.setInt(1,customerID);

            rowDeleted = preparedStatement.executeUpdate() > 0;
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return rowDeleted;
    }

    @Override
    public boolean updateCustomer(Customer customer) throws SQLException {
        boolean rowUpdated = false;

        try {
            PreparedStatement preparedStatement = BaseResponsitory.connection.prepareStatement(UPDATE_CUSTOMER_SQL);

            preparedStatement.setInt(1,customer.getCusType().getCustomerTypeID());
            preparedStatement.setString(2,customer.getCusName());
            preparedStatement.setDate(3,customer.getDateOfBirth());
            preparedStatement.setBoolean(4,customer.isGender());
            preparedStatement.setString(5,customer.getCusIDCard());
            preparedStatement.setString(6,customer.getPhoneNumber());
            preparedStatement.setString(7,customer.getEmail());
            preparedStatement.setString(8,customer.getAddress());
            preparedStatement.setInt(9,customer.getCusID());

            rowUpdated = preparedStatement.executeUpdate() > 0;
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return rowUpdated;
    }
}
