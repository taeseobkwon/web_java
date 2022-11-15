package test;

public class ThreadMain2 {

	public static void main(String[] args) {
		// 스레드 객체 3개 만들어줌 ==> ram에 준비
		AtThread at = new AtThread();
		StarThread star = new StarThread();
		DollarThread dollar = new DollarThread();
		
		// cpu한테 실행할 대기줄에 넣어주세요.
		at.start();
		star.start();
		dollar.start();
	}

}
