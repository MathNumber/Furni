package com.shop.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import com.shop.dao.GenericDAO;
import com.shop.mapper.RowMapper;

public class AbstractDAO<T> implements GenericDAO<T> {

	public Connection getConnection() {
		Connection c = null;
		try {
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			String username = "root";
			String password = "";
			String url = "jdbc:mysql://localhost:3306/furni";
			c = DriverManager.getConnection(url, username, password);
		} catch (SQLException e) {
			System.err.println(e.getMessage());
		}
		return c;
	}

	@Override
	public List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters) {
		List<T> result = new ArrayList<>();
		Connection c = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			c = getConnection();
			ps = c.prepareStatement(sql);
			setParameter(ps, parameters);
			rs = ps.executeQuery();
			while (rs.next()) {
				result.add(rowMapper.mapRow(rs));
			}
			return result;
		} catch (SQLException e) {
			System.err.println(e.getMessage());
		} finally {
			try {
				if (c != null) {
					c.close();
				} else if (ps != null) {
					ps.close();
				} else if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				System.err.println(e.getMessage());
			}
		}
		return null;
	}

	private void setParameter(PreparedStatement ps, Object[] parameters) {
		for (int i = 0; i < parameters.length; i++) {
			int index = i + 1;
			Object parameter = parameters[i];
			try {
				if (parameter instanceof String) {
					ps.setString(index, (String) parameter);
				} else if (parameter instanceof Integer) {
					ps.setInt(index, (Integer) parameter);
				} else if (parameter instanceof Timestamp) {
					ps.setTimestamp(index, (Timestamp) parameter);
				} else if (parameter instanceof Double) {
					ps.setDouble(index, (Double) parameter);
				} else if (parameter == null) {
					ps.setNull(index, Types.NULL);
				}
			} catch (SQLException e) {
				System.err.println(e.getMessage());
			}
		}
	}

	@Override
	public Integer insert(String sql, Object... parameters) {
		Integer id = null;
		Connection c = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			c = getConnection();
			c.setAutoCommit(false);
			ps = c.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			setParameter(ps, parameters);
			ps.executeUpdate();
			rs = ps.getGeneratedKeys();
			while (rs.next()) {
				id = rs.getInt(1);
			}
			c.commit();
			return id;
		} catch (SQLException e) {
			System.err.println(e.getMessage());
		} finally {
			try {
				if (c != null) {
					c.rollback();
				}
			} catch (SQLException e) {
				System.err.println(e.getMessage());
			}
		}
		return null;
	}

	@Override
	public void update(String sql, Object... parameters) {
		Connection c = null;
		PreparedStatement ps = null;
		try {
			c = getConnection();
			c.setAutoCommit(false);
			ps = c.prepareStatement(sql);
			setParameter(ps, parameters);
			ps.executeUpdate();
			c.commit();
		} catch (SQLException e) {
			System.err.println(e.getMessage());
		} finally {
			try {
				if (c != null) {
					c.rollback();
				}
			} catch (SQLException e) {
				System.err.println(e.getMessage());
			}
		}
	}

	@Override
	public int count(String sql, Object... parameters) {
		Connection connection=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			int count=0;
			connection=getConnection();
			ps=connection.prepareStatement(sql);
			setParameter(ps,parameters);
			rs=ps.executeQuery();
			while(rs.next()) {
				count=rs.getInt(1);
			}
			return count;
		} catch (Exception e) {
			return 0;
		}finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (ps != null) {
					ps.close();
				}
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				return 0;
			}

		}
	}
}
