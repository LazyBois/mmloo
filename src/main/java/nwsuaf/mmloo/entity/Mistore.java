package nwsuaf.mmloo.entity;

import java.util.Date;

public class Mistore {
    private Integer mid;

    private String mname;

    private String uname;

    private String logo;

    private String mtype;

    private String mcompany;

    private String brandinfo;

    private String industry;

    private String notes;

    private String state;

    private Date ctime;

    private String cnote;

    private String payway;

    private String sendway;

    private Float point;

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname == null ? null : mname.trim();
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname == null ? null : uname.trim();
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo == null ? null : logo.trim();
    }

    public String getMtype() {
        return mtype;
    }

    public void setMtype(String mtype) {
        this.mtype = mtype == null ? null : mtype.trim();
    }

    public String getMcompany() {
        return mcompany;
    }

    public void setMcompany(String mcompany) {
        this.mcompany = mcompany == null ? null : mcompany.trim();
    }

    public String getBrandinfo() {
        return brandinfo;
    }

    public void setBrandinfo(String brandinfo) {
        this.brandinfo = brandinfo == null ? null : brandinfo.trim();
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry == null ? null : industry.trim();
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes == null ? null : notes.trim();
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    @SuppressWarnings("deprecation")
	public String getCtime() {
        return null == ctime?null:ctime.toLocaleString();
    }

    public void setCtime(Date ctime) {
        this.ctime = ctime;
    }

    public String getCnote() {
        return cnote;
    }

    public void setCnote(String cnote) {
        this.cnote = cnote == null ? null : cnote.trim();
    }

    public String getPayway() {
        return payway;
    }

    public void setPayway(String payway) {
        this.payway = payway == null ? null : payway.trim();
    }

    public String getSendway() {
        return sendway;
    }

    public void setSendway(String sendway) {
        this.sendway = sendway == null ? null : sendway.trim();
    }

    public Float getPoint() {
        return point;
    }

    public void setPoint(Float point) {
        this.point = point;
    }
}