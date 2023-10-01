package com.shop.controller.web.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.shop.model.ProductModel;
import com.shop.service.IProductService;
import com.shop.utils.HttpUtil;

@WebServlet(urlPatterns = "/api-product")
public class ProductAPI extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Inject
	public IProductService productService;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("application/json");
		ObjectMapper mapper=new ObjectMapper();
		ProductModel productModel= HttpUtil.of(request.getReader()).toModel(ProductModel.class);
		productModel= productService.save(productModel);
		mapper.writeValue(response.getOutputStream(), productModel);
	}
}
