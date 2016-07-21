package nwsuaf.mmloo.entity;

import java.util.Date;
import java.util.List;

public class Gshelves {
    private Long gid;

    private int mid;

    private Integer kid;

    private Integer selfid;

    private Integer gpid;

    private Integer pid;

    private String gname;

    private String choproperty;

    private String selfimage;

    private Float num;

    private Float gprice;

    private String state;

    private String notestate;

    private Date date;
    
    private Mistore mistore;

    private List<Gpropert> gro;

	private List<Gparameter> gpa;

	public List<Gpropert> getGro() {
		return gro;
	}

	public void setGro(List<Gpropert> gro) {
		this.gro = gro;
	}

	public List<Gparameter> getGpa() {
		return gpa;
	}

	public void setGpa(List<Gparameter> gpa) {
		this.gpa = gpa;
	}

    public Long getGid() {
        return gid;
    }

    public void setGid(Long gid) {
        this.gid = gid;
    }

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public Integer getKid() {
        return kid;
    }

    public void setKid(Integer kid) {
        this.kid = kid;
    }

    public Integer getSelfid() {
        return selfid;
    }

    public void setSelfid(Integer selfid) {
        this.selfid = selfid;
    }

    public Integer getGpid() {
        return gpid;
    }

    public void setGpid(Integer gpid) {
        this.gpid = gpid;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname == null ? null : gname.trim();
    }

    public String getChoproperty() {
        return choproperty;
    }

    public void setChoproperty(String choproperty) {
        this.choproperty = choproperty == null ? null : choproperty.trim();
    }

    public String getSelfimage() {
        return selfimage;
    }

    public void setSelfimage(String selfimage) {
        this.selfimage = selfimage == null ? null : selfimage.trim();
    }

    public Float getNum() {
        return num;
    }

    public void setNum(Float num) {
        this.num = num;
    }

    public Float getGprice() {
        return gprice;
    }

    public void setGprice(Float gprice) {
        this.gprice = gprice;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    public String getNotestate() {
        return notestate;
    }

    public void setNotestate(String notestate) {
        this.notestate = notestate == null ? null : notestate.trim();
    }

    @SuppressWarnings("deprecation")
	public String getDate() {
    	if(null == date){return null;}
        return date.toLocaleString();
    }

    public void setDate(Date date) {
        this.date = date;
    }

	public Mistore getMistore() {
		return mistore;
	}

	public void setMistore(Mistore mistore) {
		this.mistore = mistore;
	}
}