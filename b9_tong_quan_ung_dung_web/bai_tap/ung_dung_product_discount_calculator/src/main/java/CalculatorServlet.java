import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.tools.Diagnostic;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet" , value = "/CalculatorServlet")
public class CalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String giaTien = request.getParameter("giaSanPham");
        String chietKhau = request.getParameter("chietKhau");

        double tyLeCK = Double.parseDouble(giaTien) * Double.parseDouble(chietKhau) * 0.01;

        double giaSauCK = Double.parseDouble(giaTien) - tyLeCK;

        request.setAttribute("tyLeCK",tyLeCK);
        request.setAttribute("giaSauCK", giaSauCK);
        request.getRequestDispatcher("result.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
