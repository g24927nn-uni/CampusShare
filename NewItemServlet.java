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

        String name = request.getParameter("name");
        String category = request.getParameter("category");
        String description = request.getParameter("description");
        String price = request.getParameter("price");

        // とりあえず登録完了メッセージとして渡す（DBなし）
        request.setAttribute("message", "商品「" + name + "」を登録しました");

        request.getRequestDispatcher("message.jsp").forward(request, response);
    }
}
