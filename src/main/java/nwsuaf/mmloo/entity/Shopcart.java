package nwsuaf.mmloo.entity;

import java.util.Date;

/**
 * @author LazyMan
 *购物车
 */
public class Shopcart {
    private String uname;

    private Long gid;

    private Integer snum;
    
    private Date date;
    
	private Gshelves goods;
	
    public String getDate() {
		return date == null ? null : date.toLocaleString();
	}

	public void setDate(Date date) {
		this.date = date;
	}
    
    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname == null ? null : uname.trim();
    }

    public Long getGid() {
        return gid;
    }

    public void setGid(Long gid) {
        this.gid = gid;
    }

    public Integer getSnum() {
        return snum;
    }

    public void setSnum(Integer snum) {
        this.snum = snum;
    }

	public Gshelves getGoods() {
		return goods;
	}

	public void setGoods(Gshelves goods) {
		this.goods = goods;
	}
}