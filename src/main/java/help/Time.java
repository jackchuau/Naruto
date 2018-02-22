package help;

import java.sql.Timestamp;

/**
 * 
 * @author jackchu
 * all methods to generate or format Time
 */
public class Time {
	
	public static Timestamp getCurrentTimestamp(){
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		return timestamp;
	}
	
}
