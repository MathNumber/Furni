package com.shop.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.utils.FormUtil;
import com.shop.model.ProductModel;
import com.shop.model.UserModel;
import com.shop.service.IProductService;
import com.shop.utils.SessionUtil;
import com.shop.paging.Pageble;
import com.shop.paging.PageRequest;

@WebServlet(urlPatterns = { "/lich-su"})
public class HistoryController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Inject
	public IProductService productService;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductModel product = FormUtil.toModel(ProductModel.class, request);
		Pageble pageble = new PageRequest(product.getPage(), product.getMaxPageItem());
		UserModel loggedUser = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
		Integer userId = loggedUser.getId();
		product.setListResult(productService.findAll(userId,pageble));
		product.setTotalItem(productService.getTotalItem(userId));
		product.setTotalPage((int) Math.ceil((double) product.getTotalItem() / product.getMaxPageItem()));
		request.setAttribute("product", product);
		RequestDispatcher rd = request.getRequestDispatcher("/views/web/history.jsp");
		rd.forward(request, response);
	}

}
