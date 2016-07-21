package nwsuaf.mmloo.entity;

import java.util.Date;

/**
 * @author LazyMan
 *物流
 */
public class Logistics {
	private Long kid;
	
    private Long logid;

    private Date logtime;

    private String logplace;

    private String logstate;

    public Long getLogid() {
        return logid;
    }

    public void setLogid(Long logid) {
        this.logid = logid;
    }

    public Date getLogtime() {
        return logtime;
    }

    public void setLogtime(Date logtime) {
        this.logtime = logtime;
    }

    public String getLogplace() {
        return logplace;
    }

    public void setLogplace(String logplace) {
        this.logplace = logplace == null ? null : logplace.trim();
    }

    public String getLogstate() {
        return logstate;
    }

    public void setLogstate(String logstate) {
        this.logstate = logstate == null ? null : logstate.trim();
    }

	public Long getKid() {
		return kid;
	}

	public void setKid(Long kid) {
		this.kid = kid;
	}
}