package com.shop.controller.web.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.shop.model.OrderModel;
import com.shop.service.IOrderService;
import com.shop.utils.HttpUtil;

@WebServlet(urlPatterns = "/api-order")
public class OrderAPI extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Inject
	public IOrderService orderService;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("application/json");
		req.setCharacterEncoding("UTF-8");
		ObjectMapper mapper = new ObjectMapper();
		OrderModel orderModel=(OrderModel)HttpUtil.of(req.getReader()).toModel(OrderModel.class);
		orderModel=orderService.save(orderModel);
		mapper.writeValue(resp.getOutputStream(), orderModel);
	}
}
