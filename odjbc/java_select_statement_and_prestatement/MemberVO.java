package java_select_statement_and_prestatement;

import java.sql.Date;

public class MemberVO {
	private String mid;
	private String mpassword;
	private String mname;
	private String memail;
	private Date mjoinDate;
	
	public MemberVO() {
		
	}
	
	public MemberVO(String mid, String mpassword, String mname, String memail, Date mjoinDate) {
		this.mid = mid;
		this.mpassword = mpassword;
		this.mname = mname;
		this.memail = memail;
		this.mjoinDate = mjoinDate;
	}
	
	public String getMid() {
		return mid;
	}
	public String getMpassword() {
		return mpassword;
	}
	public void setMpassword(String mpassword) {
		this.mpassword = mpassword;
	}
	public String getMname() {
		return mname;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public Date getMjoinDate() {
		return mjoinDate;
	}

	@Override
	public String toString() {
		return "MemberVO [mid=" + mid + ", mpassword=" + mpassword + ", mname=" + mname + ", memail=" + memail
				+ ", mjoinDate=" + mjoinDate + "]";
	}
	
	
	
}
