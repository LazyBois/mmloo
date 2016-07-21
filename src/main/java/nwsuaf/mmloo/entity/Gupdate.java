package nwsuaf.mmloo.entity;

import java.util.Date;

public class Gupdate {
    private Integer gid;

    private String content;

    private Float updatenum;

    private Date updatetime;

    public Integer getGid() {
        return gid;
    }

    public void setGid(Integer gid) {
        this.gid = gid;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Float getUpdatenum() {
        return updatenum;
    }

    public void setUpdatenum(Float updatenum) {
        this.updatenum = updatenum;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }
}