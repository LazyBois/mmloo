package nwsuaf.mmloo.entity;

/**
 * @author LazyMan
 *订单商品
 */
public class Orderg {
    private Long orderid;

    private Long gid;

    private Float gprice;

    private float gnumber;
    private String gdescribe;
    private String status;

    private Float favorable;

    //商品
    private Gshelves goods;
    
    public Long getOrderid() {
        return orderid;
    }

    public void setOrderid(Long orderid) {
        this.orderid = orderid;
    }

    public Long getGid() {
        return gid;
    }

    public void setGid(Long gid) {
        this.gid = gid;
    }

    public Float getGprice() {
        return gprice;
    }

    public void setGprice(Float gprice) {
        this.gprice = gprice;
    }

    public float getGnumber() {
        return gnumber;
    }

    public void setGnumber(float gnumber) {
        this.gnumber = gnumber;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public Float getFavorable() {
        return favorable;
    }

    public void setFavorable(Float favorable) {
        this.favorable = favorable;
    }

	public Gshelves getGoods() {
		return goods;
	}

	public void setGoods(Gshelves goods) {
		this.goods = goods;
	}

	public String getGdescribe() {
		return gdescribe;
	}

	public void setGdescribe(String gdescribe) {
		this.gdescribe = gdescribe;
	}
}