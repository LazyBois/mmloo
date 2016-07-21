package nwsuaf.mmloo.entity;

import java.util.Date;
import java.util.List;

public class User {
    private String uname;

    private String nickname;

    private String sex;

    private Date birthday;

    private String email;

    private String password;

    private String image;

    private String kind;

    private String grade;

    private Float balance;

    private Float credit;

    private String phone;

    private String qq;

    private String ip;

    private Date lasttime;

    private Date nowtime;

    //地址列表
    private List<Address> addresses;
    
    //购物车列表
    private List<Shopcart> shopcarts;
    
    //订单列表
    private List<Order> orders;
    
    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname == null ? null : uname.trim();
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname == null ? null : nickname.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
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
        this.email = email == null ? null : email.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image == null ? null : image.trim();
    }

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind == null ? null : kind.trim();
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade == null ? null : grade.trim();
    }

    public float getBalance() {
        return null != balance ? balance : 0;
    }

    public void setBalance(Float balance) {
        this.balance = balance;
    }

    public Float getCredit() {
        return credit;
    }

    public void setCredit(Float credit) {
        this.credit = credit;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq == null ? null : qq.trim();
    }

	public List<Address> getAddresses() {
		return addresses;
	}

	public void setAddresses(List<Address> addresses) {
		this.addresses = addresses;
	}

	public List<Shopcart> getShopcarts() {
		return shopcarts;
	}

	public void setShopcarts(List<Shopcart> shopcarts) {
		this.shopcarts = shopcarts;
	}

	public List<Order> getOrders() {
		return orders;
	}

	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public Date getLasttime() {
		return lasttime;
	}

	public void setLasttime(Date lasttime) {
		this.lasttime = lasttime;
	}

	public Date getNowtime() {
		return nowtime;
	}

	public void setNowtime(Date nowtime) {
		this.nowtime = nowtime;
	}
}