package servlet;

import model.Calculator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculatorServlet" , urlPatterns = {"/" , "/calculate"})
public class CalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String num1 = request.getParameter("first-operand");
        String num2 = request.getParameter("second-operand");
        char toanTu = request.getParameter("operator").charAt(0);

        float firstOperand = Integer.parseInt(num1);
        float secondOperand = Integer.parseInt(num2);

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>Result:</h1>");
        try{
            float result = Calculator.calculate(firstOperand, secondOperand, toanTu);
            writer.println(firstOperand + " " + toanTu + " " + secondOperand + " = " + result);
        }catch (Exception ex){
            writer.println("Error: " + ex.getMessage());
        }
        writer.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
