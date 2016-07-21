package nwsuaf.mmloo.entity;

import java.util.Date;

public class TableFile {

	private Integer fileID;
	private Integer userID;
	private String fileName;
	private String fileStyle;
	private Date updateTime;
	
	public Integer getFileID() {
		return fileID;
	}
	public void setFileID(Integer fileID) {
		this.fileID = fileID;
	}
	public Integer getUserID() {
		return userID;
	}
	public void setUserID(Integer userID) {
		this.userID = userID;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileStyle() {
		return fileStyle;
	}
	public void setFileStyle(String fileStyle) {
		this.fileStyle = fileStyle;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	} 
	
}
