package servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private static final Map<String, String> users = new HashMap<>();

    static {
        users.put("A00001", "pass1");
        users.put("B00002", "pass2");
        users.put("G00003", "pass3");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String studentId = request.getParameter("studentId");
        String password = request.getParameter("password");

        if (users.containsKey(studentId) && users.get(studentId).equals(password)) {
            HttpSession session = request.getSession();
            session.setAttribute("studentId", studentId);
            response.sendRedirect("itemList.jsp");
        } else {
            request.setAttribute("error", "入力内容が正しくありません");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
