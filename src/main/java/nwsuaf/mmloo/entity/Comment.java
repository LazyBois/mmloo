package nwsuaf.mmloo.entity;

import java.util.Date;

public class Comment{
    private Integer commentid;

    private Integer rcommentid;

    private String uname;

    private Integer orderid;

    private String gpro;

    private Integer mkid;

    private Long gid;

    private String level;

    private String reply;

    private Integer sattitude;

    private Integer gpack;

    private Integer satisfaction;

    private Integer dspeed;

    private Date cdate;

    public Integer getCommentid() {
        return commentid;
    }

    public void setCommentid(Integer commentid) {
        this.commentid = commentid;
    }

    public Integer getRcommentid() {
        return rcommentid;
    }

    public void setRcommentid(Integer rcommentid) {
        this.rcommentid = rcommentid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname == null ? null : uname.trim();
    }

    public Integer getOrderid() {
        return orderid;
    }

    public void setOrderid(Integer orderid) {
        this.orderid = orderid;
    }

    public String getGpro() {
        return gpro;
    }

    public void setGpro(String gpro) {
        this.gpro = gpro == null ? null : gpro.trim();
    }

    public Integer getMkid() {
        return mkid;
    }

    public void setMkid(Integer mkid) {
        this.mkid = mkid;
    }

    public Long getGid() {
        return gid;
    }

    public void setGid(Long gid) {
        this.gid = gid;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level == null ? null : level.trim();
    }

    public String getReply() {
        return reply;
    }

    public void setReply(String reply) {
        this.reply = reply == null ? null : reply.trim();
    }

    public Integer getSattitude() {
        return sattitude;
    }

    public void setSattitude(Integer sattitude) {
        this.sattitude = sattitude;
    }

    public Integer getGpack() {
        return gpack;
    }

    public void setGpack(Integer gpack) {
        this.gpack = gpack;
    }

    public Integer getSatisfaction() {
        return satisfaction;
    }

    public void setSatisfaction(Integer satisfaction) {
        this.satisfaction = satisfaction;
    }

    public Integer getDspeed() {
        return dspeed;
    }

    public void setDspeed(Integer dspeed) {
        this.dspeed = dspeed;
    }

    public Date getCdate() {
        return cdate;
    }

    public void setCdate(Date cdate) {
        this.cdate = cdate;
    }
}