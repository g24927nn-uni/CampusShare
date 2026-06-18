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

        //　URLからidを取得
        String id = request.getParameter("id");

        // idごとに分岐
        if ("1".equals(id)) {
            request.setAttribute("name", "Java プログラミング基礎");
            request.setAttribute("category", "教科書");
            request.setAttribute("description", "授業で使用した教科書です");
            request.setAttribute("price", "500");

        } else if ("2".equals(id)) {
            request.setAttribute("name", "ミニ冷蔵庫");
            request.setAttribute("category", "家電");
            request.setAttribute("description", "一人暮らし用");
            request.setAttribute("price", "3000");

        } else if ("3".equals(id)) {
            request.setAttribute("name", "英語参考書");
            request.setAttribute("category", "教科書");
            request.setAttribute("description", "TOEIC対策");
            request.setAttribute("price", "300");
        }

        request.getRequestDispatcher("itemDetail.jsp").forward(request, response);
    }
}