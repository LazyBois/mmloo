package nwsuaf.mmloo.entity;

public class Gpropert {
    private Integer id;

    private Integer gpid;

    private Long mid;

    private String proname;

    private String provalue;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getGpid() {
        return gpid;
    }

    public void setGpid(Integer gpid) {
        this.gpid = gpid;
    }

    public Long getMid() {
        return mid;
    }

    public void setMid(Long mid) {
        this.mid = mid;
    }

    public String getProname() {
        return proname;
    }

    public void setProname(String proname) {
        this.proname = proname == null ? null : proname.trim();
    }

    public String getProvalue() {
        return provalue;
    }

    public void setProvalue(String provalue) {
        this.provalue = provalue == null ? null : provalue.trim();
    }
}