package nwsuaf.mmloo.entity;

import java.util.Date;
import java.util.List;

public class Order {
    private Long orderid;

    private String uname;

    private String mname;

    private String reinformation;

    private Long logid;

    private String status;

    private Date ordertime;

    private Date stime;

    private Date etime;

    private String paymethod;

    private Float totalprice;

    private Float realtotalprice;

    private Float distotalprice;

    private Float point;

    private String billkind;

    private String billtitle;

    private String billcontent;
    
    private List<Logistics> logs;

    private List<Orderg> ordergs;

    public Long getOrderid() {
        return orderid;
    }

    public void setOrderid(Long orderid) {
        this.orderid = orderid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname == null ? null : uname.trim();
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname == null ? null : mname.trim();
    }

    public String getReinformation() {
        return reinformation;
    }

    public void setReinformation(String reinformation) {
        this.reinformation = reinformation == null ? null : reinformation.trim();
    }

    public Long getLogid() {
        return logid;
    }

    public void setLogid(Long logid) {
        this.logid = logid;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    @SuppressWarnings("deprecation")
	public String getOrdertime() {
        return ordertime == null ? null : ordertime.toLocaleString();
    }

    public void setOrdertime(Date ordertime) {
        this.ordertime = ordertime;
    }

    public Date getStime() {
        return stime;
    }

    public void setStime(Date stime) {
        this.stime = stime;
    }

    public Date getEtime() {
        return etime;
    }

    public void setEtime(Date etime) {
        this.etime = etime;
    }

    public String getPaymethod() {
        return paymethod;
    }

    public void setPaymethod(String paymethod) {
        this.paymethod = paymethod == null ? null : paymethod.trim();
    }

    public Float getTotalprice() {
        return totalprice;
    }

    public void setTotalprice(Float totalprice) {
        this.totalprice = totalprice;
    }

    public Float getRealtotalprice() {
        return realtotalprice;
    }

    public void setRealtotalprice(Float realtotalprice) {
        this.realtotalprice = realtotalprice;
    }

    public Float getDistotalprice() {
        return distotalprice;
    }

    public void setDistotalprice(Float distotalprice) {
        this.distotalprice = distotalprice;
    }

    public Float getPoint() {
        return point;
    }

    public void setPoint(Float point) {
        this.point = point;
    }

    public String getBillkind() {
        return billkind;
    }

    public void setBillkind(String billkind) {
        this.billkind = billkind == null ? null : billkind.trim();
    }

    public String getBilltitle() {
        return billtitle;
    }

    public void setBilltitle(String billtitle) {
        this.billtitle = billtitle == null ? null : billtitle.trim();
    }

    public String getBillcontent() {
        return billcontent;
    }

    public void setBillcontent(String billcontent) {
        this.billcontent = billcontent == null ? null : billcontent.trim();
    }

	public List<Logistics> getLogs() {
		return logs;
	}

	public void setLogs(List<Logistics> logs) {
		this.logs = logs;
	}

	public List<Orderg> getOrdergs() {
		return ordergs;
	}

	public void setOrdergs(List<Orderg> ordergs) {
		this.ordergs = ordergs;
	}
}