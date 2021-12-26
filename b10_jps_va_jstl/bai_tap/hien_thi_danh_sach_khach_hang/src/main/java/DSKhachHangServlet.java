import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "DSKhachHangServlet" , urlPatterns = "" )
public class DSKhachHangServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<KhachHang> khachHangList = new ArrayList<>();
        khachHangList.add(new KhachHang("Nguyen Van A","21/02/1995","VN","https://i.ytimg.com/vi/THHRoUSmkO0/maxresdefault.jpg"));
        khachHangList.add(new KhachHang("Nguyen Van B","21/02/1995","VN","https://i.ytimg.com/vi/THHRoUSmkO0/maxresdefault.jpg"));
        khachHangList.add(new KhachHang("Nguyen Van C","21/02/1995","VN","https://i.ytimg.com/vi/THHRoUSmkO0/maxresdefault.jpg"));
        request.setAttribute("listDSKhachHang1" , khachHangList);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}
