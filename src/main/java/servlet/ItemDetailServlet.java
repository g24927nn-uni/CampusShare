package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/itemDetail")
public class ItemDetailServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String idStr = request.getParameter("id");
        int id = Integer.parseInt(idStr);

        Item item = ItemStore.findById(id);

        HttpSession session = request.getSession();
        String loginStudentId = (String) session.getAttribute("studentId");

        request.setAttribute("item", item);
        request.setAttribute("isOwnItem", item != null && item.getSellerId().equals(loginStudentId));

        request.getRequestDispatcher("itemDetail.jsp").forward(request, response);
    }
}