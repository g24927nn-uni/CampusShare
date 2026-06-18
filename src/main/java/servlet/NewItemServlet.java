package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/newItem")
public class NewItemServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");


        String idStr = request.getParameter("id");
        int id = Integer.parseInt(idStr);

        String name = request.getParameter("name");
        String category = request.getParameter("category");
        String detail = request.getParameter("description");
        String price = request.getParameter("price");

        Item item = new Item(id, name, category, detail, price);
        ItemStore.addItem(item);

        response.sendRedirect("itemList.jsp");
    }
}