package com.shop.controller.web.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.shop.model.UserModel;
import com.shop.service.IUserService;
import com.shop.utils.HttpUtil;

@WebServlet(urlPatterns = "/api-user")
public class UserAPI extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Inject
	public IUserService userService;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("application/json");
		req.setCharacterEncoding("UTF-8");
		ObjectMapper mapper = new ObjectMapper();
		UserModel userModel=(UserModel)HttpUtil.of(req.getReader()).toModel(UserModel.class);
		userModel=userService.save(userModel);
		mapper.writeValue(resp.getOutputStream(), userModel);
	}
}
