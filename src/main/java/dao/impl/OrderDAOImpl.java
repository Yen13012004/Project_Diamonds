package dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.OrderDAO;
import entities.Customer;
import entities.Orders;

@Repository
public class OrderDAOImpl implements OrderDAO{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Orders> getOrders() {
		Session session = sessionFactory.openSession();
		List<Orders> results = session.createQuery("from Orders").getResultList();
		session.close();
		return results;
	}

	@Override
	public void insert(Orders order) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Orders getOrderById(Integer customerId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Orders order) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Integer orderId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Orders> getOrderPagination(Integer offset, Integer maxResult) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Long getTotalOrderPagination() {
		// TODO Auto-generated method stub
		return null;
	}
}
