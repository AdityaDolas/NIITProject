package com.aditya.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.aditya.dao.ProductDao;
import com.aditya.pojo.Product;

@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Product p = new Product();
	ProductDao pd = new ProductDao();

	public ProductServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		String action = request.getParameter("action");

		if (action != null && action.equals("delete")) {
			String pid = request.getParameter("pid");
			
			boolean b = pd.deleteProduct(pid);
			if (b) {
				response.sendRedirect("ProductServlet");
			}

		} else if (action != null && action.equals("edit")) {
			int pid = Integer.parseInt(request.getParameter("pid"));
			/*System.out.println(action + " Jada Dataa  :  " + request.getParameter("pid"));*/
			Product p = pd.getProductByid(pid);
			/* System.out.println("Data  " + p); */
			session.setAttribute("p", p);
			response.sendRedirect("UpdateProduct.jsp");

		} else if (request.getParameter("searchServlet") != null){
			String pname = request.getParameter("search");
			List<Product> ap = pd.getProductByname(pname);
			session.setAttribute("plist", ap);
			response.sendRedirect("Products.jsp");
			
		} else {
			List<Product> ap = pd.getProductList();
			session.setAttribute("plist", ap);
			response.sendRedirect("ProductList.jsp");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// PrintWriter out = response.getWriter();

		String name = request.getParameter("pname");
		String price = request.getParameter("pprice");
		String qty = request.getParameter("pqty");
		String category = request.getParameter("pcategory");
		String descript = request.getParameter("pdescript");

		p.setPName(name);
		p.setPPrice(price);
		p.setPQuantity(qty);
		p.setPCategory(category);
		p.setPDescript(descript);

		boolean b = pd.addProduct(p);

		if (b) {
			response.sendRedirect("ProductList.jsp");
		} else {
			response.sendRedirect("AddProduct.jsp");
		}

	}
}