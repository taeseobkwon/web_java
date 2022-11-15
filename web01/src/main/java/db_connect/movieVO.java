package db_connect;

public class movieVO {
	private int no;
	private String TITLE;
	private String IMG;
	private String URL;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTITLE() {
		return TITLE;
	}
	public void setTITLE(String tITLE) {
		TITLE = tITLE;
	}
	public String getIMG() {
		return IMG;
	}
	public void setIMG(String iMG) {
		IMG = iMG;
	}
	public String getURL() {
		return URL;
	}
	public void setURL(String uRL) {
		URL = uRL;
	}
	@Override
	public String toString() {
		return "movieVO [no=" + no + ", TITLE=" + TITLE + ", IMG=" + IMG + ", URL=" + URL + "]";
	}
	

	
}
