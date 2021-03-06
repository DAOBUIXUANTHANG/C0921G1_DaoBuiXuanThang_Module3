package controller;

import model.Product;
import service.ProductService;
import service.ProductServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet" , urlPatterns = { "/product"})
public class ProductServlet extends HttpServlet {
    private ProductService productService = new ProductServiceImpl();

    

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }

        switch (action){
            case "create":
                createProduct(request, response);
                break;
            case "edit":
                break;
            case "delete":
                break;
            default:

                break;
        }
    }

    private void listProduct(HttpServletRequest request , HttpServletResponse response){
        List<Product> products = this.productService.findAll();

        request.setAttribute("product", products);

        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/list.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void createProduct(HttpServletRequest request,HttpServletResponse response){
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String descriptionOfProd = request.getParameter("descriptionOfProd");
        String producer = request.getParameter("producer");
        int idKey = (int)(Math.random() * 10000000);

        Product product = new Product(id,name,price,descriptionOfProd,producer);
        this.productService.save(idKey,product);

        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/create.jsp");
        request.setAttribute("message", "New pruduct was created");

        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    };

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null){
            action = "";
        }
        switch (action){
            case "create":
                showCreateForm(request,response);
                break;
            case "edit":
                break;
            case "delete":
                break;
            case "view":
                break;
            default:
                listProduct(request,response);
                break;
        }
    }

    private void showCreateForm(HttpServletRequest request,HttpServletResponse response){
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/create.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    };
}
