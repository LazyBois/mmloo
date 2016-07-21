package nwsuaf.mmloo.power;

public enum AuthorityType{
	// 包含了枚举的中文名称, 枚举的索引值

	//银米、金米、白金米、钻石米、至尊钻石米
	USER1("银米",1),
	USER2("金米",2),
	USER3("白金米",3),
	USER4("钻石米",4),
	USER5("至尊钻石米",5),
	
	//需要验证用户是否登录
	LOGIN("login",6),
	;
	private String name;
	private int index;

	private AuthorityType(String name, int index) {
	    this.name = name;
	    this.index = index;
	}
	public String getName() {
	    return name;
	}
	public void setName(String name) {
	    this.name = name;
	}
	public int getIndex() {
	    return index;
	}
	public void setIndex(int index) {
	    this.index = index;
	}
	}