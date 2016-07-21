package nwsuaf.mmloo.entity;

import java.util.Date;

public class Mpoint{
    private Integer mpid;

    private String mname;

    private Float mpup;

    private String mpnote;

    private Date mpdate;

    public Integer getMpid() {
        return mpid;
    }

    public void setMpid(Integer mpid) {
        this.mpid = mpid;
    }

    public Float getMpup() {
        return mpup;
    }

    public void setMpup(Float mpup) {
        this.mpup = mpup;
    }

    public String getMpnote() {
        return mpnote;
    }

    public void setMpnote(String mpnote) {
        this.mpnote = mpnote == null ? null : mpnote.trim();
    }

    public Date getMpdate() {
        return mpdate;
    }

    public void setMpdate(Date mpdate) {
        this.mpdate = mpdate;
    }

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}
}