package nwsuaf.mmloo.entity;

import java.util.Date;

public class Balance {
    private Long bid;

    private String uname;

    private Date date;

    private Float put;

    private Float removes;

    private String describes;

    public Long getBid() {
        return bid;
    }

    public void setBid(Long bid) {
        this.bid = bid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname == null ? null : uname.trim();
    }

    public String getDate() {
        return null == date?null:date.toLocaleString();
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Float getPut() {
        return put;
    }

    public void setPut(Float put) {
        this.put = put;
    }

    public Float getRemoves() {
        return removes;
    }

    public void setRemoves(Float removes) {
        this.removes = removes;
    }

    public String getDescribes() {
        return describes;
    }

    public void setDescribes(String describes) {
        this.describes = describes == null ? null : describes.trim();
    }
}