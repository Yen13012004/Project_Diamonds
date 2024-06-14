package entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Orders")
public class Orders {
	@Id
	@Column(name = "OrderId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer orderId;
	@Column(name = "OrderDate")
	private Date orderDate;
	@Column(name = "TotalAmount")
	private Integer totalAmount;
	@Column(name = "Status")
	private Integer status;
	@Column(name = "ShippingAddress")
	private String shippingAddress;
	@Column(name = "BillingAddress")
	private Date billingAddress;
	
	@ManyToOne
	@JoinColumn(name = "customerId", referencedColumnName = "customerId")
	private Customer cusId;
	
	public Customer getCusId() {
		return cusId;
	}

	public void setCusId(Customer cusId) {
		this.cusId = cusId;
	}

	public Orders() {
		// TODO Auto-generated constructor stub
	}

	public Orders(Integer orderId, Date orderDate, Integer totalAmount, Integer status, String shippingAddress,
			Date billingAddress) {
		super();
		this.orderId = orderId;
		this.orderDate = orderDate;
		this.totalAmount = totalAmount;
		this.status = status;
		this.shippingAddress = shippingAddress;
		this.billingAddress = billingAddress;
	}

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public Integer getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(Integer totalAmount) {
		this.totalAmount = totalAmount;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(String shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	public Date getBillingAddress() {
		return billingAddress;
	}

	public void setBillingAddress(Date billingAddress) {
		this.billingAddress = billingAddress;
	}
	
	
}
