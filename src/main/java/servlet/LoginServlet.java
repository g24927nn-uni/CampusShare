package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String studentId = request.getParameter("studentId");
        String password = request.getParameter("password");

        if ("A001".equals(studentId) && "pass".equals(password)) {
            request.getRequestDispatcher("itemList.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
