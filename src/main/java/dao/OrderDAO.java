package dao;

import java.util.List;

import entities.Orders;

public interface OrderDAO {
	public List<Orders> getOrders();
	public void insert(Orders order);
	public Orders getOrderById(Integer customerId);
	public void update (Orders order);
	public void delete(Integer orderId);	
	public List<Orders> getOrderPagination(Integer offset, Integer maxResult);
	public Long getTotalOrderPagination();
}
