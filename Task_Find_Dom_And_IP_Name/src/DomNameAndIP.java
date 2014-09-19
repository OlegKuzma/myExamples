
public class DomNameAndIP {
	
	private String URL;
	public static final int SEPARATOR_LENGTH = "://".length();
	
	public DomNameAndIP(String str){
		URL=str;
	}
	
	public String DNIndexOf() {
		  int after = URL.indexOf("://");

		  int before0 = URL.indexOf(":", after + SEPARATOR_LENGTH);
		  int before1 = URL.indexOf("/", after + SEPARATOR_LENGTH);
		  int before2 = URL.indexOf("?", after + SEPARATOR_LENGTH);
		  int before3 = URL.indexOf("#", after + SEPARATOR_LENGTH);
		  int last = 1000000; // or Integer.maxValue
		  if (before0 > 0) {
		   last = before0;
		  }
		  if (before1 > 0 && before1 < last) {
		   last = before1;
		  }
		  if (before2 > 0 && before2 < last) {
		   last = before2;
		  }
		  if (before3 > 0 && before3 < last) {
		   last = before3;
		  }

		  return URL.substring(after + SEPARATOR_LENGTH, last);

		 }

	public static void main(String[] args) {
		String URLDomName= new String("https://sysgears.com?email=me%40host.com&conf=yes");
		DomNameAndIP newDomName= new DomNameAndIP(URLDomName);
		System.out.println( newDomName.DNIndexOf());
		
		String URLIP= new String("http://192.168.0.1:8080/index.gsp");
		DomNameAndIP newIP= new DomNameAndIP(URLIP);
		System.out.println( newIP.DNIndexOf());
		
	
	}

}
