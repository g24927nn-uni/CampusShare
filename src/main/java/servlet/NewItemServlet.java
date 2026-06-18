package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/newItem")
public class NewItemServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();
        String sellerId = (String) session.getAttribute("studentId");

        String name = request.getParameter("name");
        String category = request.getParameter("category");
        String detail = request.getParameter("detail");
        String comment = request.getParameter("comment");
        String price = request.getParameter("price");

        int id = ItemStore.getNextId();

        Item item = new Item(id, name, category, detail, comment, price, sellerId, "images/sample.jpeg");
        ItemStore.addItem(item);

        response.sendRedirect("itemList.jsp");
    }
}