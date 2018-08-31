import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CallServlet")
public class CallServlet extends HttpServlet {
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }

    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String data = req.getParameter("data");
        // 넘어온 자료를 이런저런 작업을 하다가...

        // 파일 호출방법 1 : redirect - client 를 통해 서버에 있는 파일 호출. (default = servlet)

//        response.sendRedirect("calljsp1.jsp?data=" + data);

        // 파일 호출방법 2 : forward - server 에서 server 에 있는 파일을 호출. (default = spring)

        req.setAttribute("mykey", data);

//        RequestDispatcher dispatcher = request.getRequestDispatcher("calljsp1.jsp");
//        dispatcher.forward(request, response);
        req.getRequestDispatcher("calljsp1.jsp").forward(req,res);
    }
}
