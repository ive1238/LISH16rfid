package usb;

public class Read {
    public static int number;

	public static void main(String[] args) {
		arduino.read(args);
	}

	public static int asdf(){
        System.out.println(number);
        return arduino.getNumber();
    	
        
	}
	


}
