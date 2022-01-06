package controller;

import model.customer.Customer;

import model.customer.CustomerType;
import service.CustomerService;
import service.ICustomerService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

@WebServlet(name = "CustomerServlet" , urlPatterns = {"/customers"})
public class CustomerServlet extends HttpServlet {

    private ICustomerService customerService = new CustomerService();


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null){
            action = "";
        }

        try {
            switch (action){
                case "create":
                    insertCustomer(request,response);
                    break;
                case "edit":
                    updateCustomer(request,response);
                    break;
            }
        } catch (SQLException exception){
            exception.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null){
            action = "";
        }
        try {
            switch (action){
                case "create":
                    showNewForm(request,response);
                    break;
                case "edit":
                    showEditForm(request,response);
                    break;
                case "delete":
                    deleteCustomer(request, response);
                    break;
                default:
                    listCustomer(request, response);
            }
        } catch (SQLException e){
            e.printStackTrace();
        }

    }

    private void listCustomer(HttpServletRequest request , HttpServletResponse response) throws SQLException, IOException, ServletException {
        List<Customer> customers = this.customerService.selectAllCustomers();
        request.setAttribute("customers", customers);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("customers/customerList.jsp");
        requestDispatcher.forward(request,response);
    }

    private void showNewForm(HttpServletRequest request,HttpServletResponse response) throws SQLException, IOException, ServletException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("customers/create.jsp");
        dispatcher.forward(request,response);
    }

    private void insertCustomer(HttpServletRequest request,HttpServletResponse response) throws SQLException, IOException, ServletException {
        try {
            int customerTypeID = Integer.parseInt(request.getParameter("customerTypeID"));
            CustomerType customerType = new CustomerType( customerTypeID);

            String customerName = request.getParameter("customerName");

            String dateString = request.getParameter("dateOfBirth");
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date parsed = format.parse(dateString);
            Date dateOfBirth = new Date(parsed.getTime());

            String gender1 = request.getParameter("gender");
            boolean gender = Boolean.parseBoolean(gender1);

            String identityNumber = request.getParameter("identityNumber");
            String phoneNumber = request.getParameter("phoneNumber");
            String email = request.getParameter("email");
            String address = request.getParameter("address");

            Customer newCustomer = new Customer( customerType ,customerName,dateOfBirth,gender,identityNumber,phoneNumber,email,address);
            this.customerService.insertCustomer(newCustomer);

            RequestDispatcher dispatcher = request.getRequestDispatcher("customers/create.jsp");
            dispatcher.forward(request,response);
        }
        catch (ParseException e) {
            e.printStackTrace();
        }
    }

    private void deleteCustomer(HttpServletRequest request,HttpServletResponse response) throws SQLException, IOException, ServletException {
        int customerID = Integer.parseInt(request.getParameter("id"));
        this.customerService.deleteCustomer(customerID);

        List<Customer> customers = this.customerService.selectAllCustomers();
        request.setAttribute("customers",customers);
        RequestDispatcher dispatcher = request.getRequestDispatcher("customers/customerList.jsp");
        dispatcher.forward(request,response);
    }

    private void showEditForm(HttpServletRequest request,HttpServletResponse response) throws SQLException, IOException, ServletException {
        int customerID = Integer.parseInt(request.getParameter("id"));
        Customer editCustomer = this.customerService.selectCustomer(customerID);

        request.setAttribute("editCustomer",editCustomer);
        RequestDispatcher dispatcher = request.getRequestDispatcher("customers/edit.jsp");
        dispatcher.forward(request,response);
    }

    private void updateCustomer(HttpServletRequest request,HttpServletResponse response) throws SQLException, IOException, ServletException {
        try {
            int customerID = Integer.parseInt(request.getParameter("customerID"));

            int customerTypeID = Integer.parseInt(request.getParameter("customerTypeID"));
            CustomerType customerType = new CustomerType(customerTypeID);

            String customerName = request.getParameter("customerName");

            String dateString = request.getParameter("dateOfBirth");
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date parsed = format.parse(dateString);
            Date dateOfBirth = new Date(parsed.getTime());

            String genderS = request.getParameter("gender");
            boolean gender = Boolean.parseBoolean(genderS);

            String identityNumber = request.getParameter("identityNumber");
            String phoneNumber = request.getParameter("phoneNumber");
            String email = request.getParameter("email");
            String address = request.getParameter("address");

            Customer updatedCustomer = new Customer(customerID,customerType,customerName,dateOfBirth,gender,identityNumber,phoneNumber,email,address);
            this.customerService.updateCustomer(updatedCustomer);

            RequestDispatcher dispatcher = request.getRequestDispatcher("customers/edit.jsp");
            dispatcher.forward(request,response);
        }
        catch (ParseException e) {
            e.printStackTrace();
        }
    }
}
