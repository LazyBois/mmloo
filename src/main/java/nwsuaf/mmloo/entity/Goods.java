package nwsuaf.mmloo.entity;

import java.util.List;

/**
 * @author LazyMan
 *商品
 */
public class Goods {
    private Integer gid;

    private String gname;

    private String gbrand;

    private String gphoto;

    //商品属性列表
    private List<Gpropert> gproperts;
    
    public Integer getGid() {
        return gid;
    }

    public void setGid(Integer gid) {
        this.gid = gid;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname == null ? null : gname.trim();
    }

    public String getGbrand() {
        return gbrand;
    }

    public void setGbrand(String gbrand) {
        this.gbrand = gbrand == null ? null : gbrand.trim();
    }

    public String getGphoto() {
        return gphoto;
    }

    public void setGphoto(String gphoto) {
        this.gphoto = gphoto == null ? null : gphoto.trim();
    }

	public List<Gpropert> getGproperts() {
		return gproperts;
	}

	public void setGproperts(List<Gpropert> gproperts) {
		this.gproperts = gproperts;
	}
}