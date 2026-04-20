package controller;

import dao.ProductDAO;
import model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/product")
public class ProductServlet extends HttpServlet {

    ProductDAO dao = new ProductDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");

        if (action == null) {
            action = "list";
        }

        switch (action) {

            case "add":
                request.getRequestDispatcher("/product/add.jsp")
                        .forward(request, response);
                break;

            case "edit":
                int idEdit = Integer.parseInt(request.getParameter("id"));
                Product p = dao.getById(idEdit);

                request.setAttribute("product", p);
                request.getRequestDispatcher("/product/edit.jsp")
                        .forward(request, response);
                break;

            case "delete":
                int idDel = Integer.parseInt(request.getParameter("id"));
                dao.delete(idDel);

                response.sendRedirect("product?action=list");
                break;

            case "list":
            default:
                List<Product> list = dao.getAll();
                request.setAttribute("list", list);

                request.getRequestDispatcher("/product/list.jsp")
                        .forward(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");

        if (action == null) {
            action = "";
        }

        switch (action) {

            case "add":

                String name = request.getParameter("name");
                double price = Double.parseDouble(request.getParameter("price"));
                int quantity = Integer.parseInt(request.getParameter("quantity"));
                String size = request.getParameter("size");

                dao.insert(name, price, quantity, size);

                response.sendRedirect("product?action=list");
                break;

            case "update":

                int id = Integer.parseInt(request.getParameter("id"));
                String nameU = request.getParameter("name");
                double priceU = Double.parseDouble(request.getParameter("price"));
                int quantityU = Integer.parseInt(request.getParameter("quantity"));
                String sizeU = request.getParameter("size");

                Product p = new Product(id, nameU, priceU, quantityU, sizeU);

                dao.update(p);

                response.sendRedirect("product?action=list");
                break;
        }
    }
}