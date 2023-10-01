package com.shop.controller.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.model.OrderModel;
import com.shop.model.ProductModel;
import com.shop.model.UserModel;
import com.shop.service.IOrderService;
import com.shop.service.IProductService;
import com.shop.service.IUserService;
import com.shop.utils.FormUtil;
import com.shop.utils.SessionUtil;

@WebServlet(urlPatterns = { "/trang-chu", "/dang-nhap", "/thoat", "/thanh-toan"})
public class HomeController extends HttpServlet {

	@Inject
	public IUserService userService;

	@Inject
	public IOrderService orderService;

	@Inject
	public IProductService productService;

	private static final long serialVersionUID = 1L;

	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action != null && action.equals("login")) {
			String message = request.getParameter("message");
			String alert = request.getParameter("alert");
			if (message != null && alert != null) {
				request.setAttribute("message", resourceBundle.getString(message));
				request.setAttribute("alert", alert);
			}
			RequestDispatcher rd = request.getRequestDispatcher("/views/login/home.jsp");
			rd.forward(request, response);
		} else if (action != null && action.equals("logout")) {
			SessionUtil.getInstance().removeValue(request, "USERMODEL");
			response.sendRedirect(request.getContextPath() + "/trang-chu");
		} else if (action != null && action.equals("signup")) {
			String message = request.getParameter("message");
			String alert = request.getParameter("alert");
			if (message != null && alert != null) {
				request.setAttribute("message", resourceBundle.getString(message));
				request.setAttribute("alert", alert);
			}
			RequestDispatcher rd = request.getRequestDispatcher("/views/login/home.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("/views/web/index.jsp");
			rd.forward(request, response);
		}

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action != null && action.equals("login")) {
			UserModel model = FormUtil.toModel(UserModel.class, request);
			model = userService.findOneByEmailAndPassword(model.getEmail(), model.getPassword());
			if (model != null) {
				SessionUtil.getInstance().putValue(request, "USERMODEL", model);
				response.sendRedirect(request.getContextPath() + "/trang-chu");
				return;
			} else {
				response.sendRedirect(
						request.getContextPath() + "/dang-nhap?action=login&message=login-fail&alert=danger");
				return;
			}
		} else if (action != null && action.equals("signup")) {
			String username = request.getParameter("username");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			if (userService.findOneByEmail(email) == true) {
				response.sendRedirect(
						request.getContextPath() + "/dang-nhap?action=signup&message=signup-duplicate&alert=danger");
			} else {
				UserModel model = new UserModel(username, password, email);
				userService.save(model);
				response.sendRedirect(
						request.getContextPath() + "/dang-nhap?action=signup&message=signup-success&alert=success");
			}
		} else if (action != null && action.equals("checkout")) {
			String firstname = request.getParameter("firstname");
			String lastname = request.getParameter("lastname");
			String country = request.getParameter("country");
			String companyname = request.getParameter("companyname");
			String state = request.getParameter("state");
			Integer phone = Integer.parseInt(request.getParameter("phone"));
			Integer zip = Integer.parseInt(request.getParameter("zip"));
			String note = request.getParameter("note");
			String email = request.getParameter("email");
			String address = request.getParameter("address");
			String fullname = firstname + " " + lastname;
			OrderModel orderModel = new OrderModel(fullname, country, companyname, state, phone, zip, note, email,
					address);
			if (orderService.save(orderModel) != null) {
				request.getRequestDispatcher("/views/web/thankyou.jsp").include(request, response);
			} else {
				response.sendRedirect(request.getContextPath() + "/trang-chu");
			}
			
			Integer count = Integer.parseInt(request.getParameter("count"));
			List<String> productsName= new ArrayList<>();
		    List<String> productsQuantity= new ArrayList<>();
		    List<String> productsPrice= new ArrayList<>();
		    UserModel loggedUser = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
		    int userId = loggedUser.getId(); 


			for (int i = 0; i <= count; i++) {
			    String productName = request.getParameter("products.name[" + i + "]");
			    String productQuantity = request.getParameter("products.quantity[" + i + "]");
			    String productPrice = request.getParameter("products.price[" + i + "]");
			    productsName.add(productName);
			    productsQuantity.add(productQuantity);
			    productsPrice.add(productPrice);
			    ProductModel product = new ProductModel();
			    product.setProductname(productsName.get(i));
			    product.setAmount(Integer.parseInt(productsQuantity.get(i)));
			    product.setPrice(Double.parseDouble(productsPrice.get(i)));
			    product.setOrderid(orderModel.getId());
			    product.setUserid(userId);
			    productService.save(product);
			}
		}
	}
}
