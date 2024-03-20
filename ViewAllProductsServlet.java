package test;
import java.io.*;
import java.util.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
@SuppressWarnings("serial")
@WebServlet("/view")
public class ViewAllProductsServlet extends GenericServlet{
@Override
public void service(ServletRequest req,ServletResponse res)throws
ServletException,IOException{
ViewAllProductsDAO ob = new ViewAllProductsDAO();
ArrayList<ProductBean> al = ob.retrieve();
req.setAttribute("alist", al);
RequestDispatcher rd =
req.getRequestDispatcher("ViewAllProducts.jsp");
rd.forward(req, res);
}
}
