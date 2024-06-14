package entities;

import java.util.Date;
import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
//import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Customer")
public class Customer implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "CustomerId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long customerId;
	@Column(name = "UserName")
	private String username;
	@Column(name = "FullName")
	private String fullName;
	@Column(name = "Avatar")
	private String avatar;
	@Column(name = "Gender")
	private int gender;
	@Column(name = "Birthday")
	private Date birthday;
	@Column(name = "Email")
	private String email;
	@Column(name = "Password")
	private String password;
	@Column(name = "Phone")
	private String phone;
	@Column(name = "Address")
	private String address;
	@Column(name = "Role")
	private String role;
	@Column(name = "Active")
	private int active;
	
	/*
	 * @OneToMany(mappedBy = "customer", fetch = FetchType.EAGER) private
	 * Set<CustomerRole> customerRole;
	 */
	
	@OneToMany(mappedBy = "cusId")
	private Set<Orders> listOrders;
	
	public Customer() {
		// TODO Auto-generated constructor stub
	}

	public Customer(Long customerId, String username, String fullName, String avatar, int gender, Date birthday,
			String email, String password, String phone, String address, String role, int active) {
		super();
		this.customerId = customerId;
		this.username = username;
		this.fullName = fullName;
		this.avatar = avatar;
		this.gender = gender;
		this.birthday = birthday;
		this.email = email;
		this.password = password;
		this.phone = phone;
		this.address = address;
		this.role = role;
		this.active = active;
	}

	public Long getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Long customerId) {
		this.customerId = customerId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}

	/*
	 * public Set<CustomerRole> getCustomerRole() { return customerRole; }
	 * 
	 * public void setCustomerRole(Set<CustomerRole> customerRole) {
	 * this.customerRole = customerRole; }
	 */

	public Set<Orders> getListOrders() {
		return listOrders;
	}

	public void setListOrders(Set<Orders> listOrders) {
		this.listOrders = listOrders;
	}

	
}
