package test;

public class MainCar {

	public static void main(String[] args) {
		Car car1 = new Car();
		System.out.println(car1); // ram->car1주소
		Car car2 = new Car();
		System.out.println(car2); // ram->car2주소
		// 프로토타입(원형 car)방법 : new
		// 주소가 다른 객체 2개가 생성
		// VO는 프로토타입방법을 사용
	}

}
