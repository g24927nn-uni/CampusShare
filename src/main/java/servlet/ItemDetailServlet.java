package servlet;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/itemDetail")
public class ItemDetailServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        // 仮のデータ（本来はDBやListから取得）
        request.setAttribute("name", "Java プログラミング基礎");
        request.setAttribute("category", "本");
        request.setAttribute("description", "授業で使用した教科書です");
        request.setAttribute("price", "500");

        request.getRequestDispatcher("itemDetail.jsp").forward(request, response);
    }
}