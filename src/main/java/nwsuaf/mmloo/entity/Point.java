package nwsuaf.mmloo.entity;

import java.util.Date;

public class Point {
    private Integer pointid;

    private String uname;

    private Float pud;

    private String pcomment;

    private Date ptime;

    public Integer getPointid() {
        return pointid;
    }

    public void setPointid(Integer pointid) {
        this.pointid = pointid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname == null ? null : uname.trim();
    }

    public Float getPud() {
        return pud;
    }

    public void setPud(Float pud) {
        this.pud = pud;
    }

    public String getPcomment() {
        return pcomment;
    }

    public void setPcomment(String pcomment) {
        this.pcomment = pcomment == null ? null : pcomment.trim();
    }

    public String getPtime() {
        return null == ptime?null:ptime.toLocaleString();
    }

    public void setPtime(Date ptime) {
        this.ptime = ptime;
    }
}