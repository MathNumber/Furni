package com.shop.dao.impl;

import java.util.List;

import com.shop.dao.IProductDAO;
import com.shop.mapper.ProductMapper;
import com.shop.model.ProductModel;
import com.shop.paging.Pageble;

public class ProductDAO extends AbstractDAO<ProductModel> implements IProductDAO {

	@Override
	public ProductModel findOne(Integer id) {
	    String sql = "SELECT * FROM products WHERE id = ?";
	    List<ProductModel> productModel = query(sql, new ProductMapper(), id);
	    return productModel.isEmpty() ? null : productModel.get(0);
	}

	@Override
	public Integer save(ProductModel productModel) {
	    String sql = "INSERT INTO products (productname,price,amount,orderid,userid) VALUES (?,?,?,?,?)";
	    return insert(sql, productModel.getProductname(),productModel.getPrice(),
	    		productModel.getAmount(),productModel.getOrderid(),productModel.getUserid());
	}

	@Override
	public List<ProductModel> findAll(Integer userid, Pageble pageble) {
		StringBuilder sql = new StringBuilder("SELECT * FROM products WHERE userid = ?");
		if (pageble.getOffset() != null && pageble.getLimit() != null) {
			sql.append(" LIMIT ? , ?");
			return query(sql.toString(), new ProductMapper(),userid, pageble.getOffset(), pageble.getLimit());
		} else
			return query(sql.toString(), new ProductMapper(),userid);
	}

	@Override
	public int getTotalItem(Integer userid) {
		String sql = "SELECT COUNT(*) FROM products WHERE userid = ?";
		return count(sql, userid);
	}

}
