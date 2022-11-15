package test;

public class MainCar2 {

	public static void main(String[] args) {
//		Car2 car1 = new Car2(); // private
//		System.out.println(car1); // ram->car1주소
//		Car2 car2 = new Car2();
//		System.out.println(car2); // ram->car2주소
		// 프로토타입(원형 car)방법 : new
		// 주소가 다른 객체 2개가 생성
		// VO는 프로토타입방법을 사용
		
		Car2 car1 = Car2.getInstance();
		System.out.println(car1);
		Car2 car2 = Car2.getInstance();
		System.out.println(car2);
		
		// 싱글톤으로 사용하는 클래스는
		// 한번 싱클톤으로 만들어주고 서버에서 계속 가지고 있는 클래스
		// ex) DAO, 서블릿(<----jsp)
	}

}
