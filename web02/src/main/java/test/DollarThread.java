package test;

//Thread클래스를 상속받아서 CounterThread를 만들었음.
public class DollarThread extends Thread{ //메서드가 여러개!!
	//동시에 처리하고 싶은 내용이 있으면, Thread가 가지는 메서드 중 run()를 재정의
	
	@Override
	public void run() {
		for (int i = 0; i < 500; i++) {
			System.out.println("$카운터>> $" + (i + 1) + "번째");
			try {
				Thread.sleep(5);
			} catch (InterruptedException e) {
				e.printStackTrace();
			} //0.5초, cpu자원을 자바가 요청!!
		}
	}
}
