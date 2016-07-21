package nwsuaf.mmloo.power;

public class AuthorityHelper {

	public static boolean hasAuthority(String a, String b) {
		if (a == null || "".equals(a)) {
			return false;
		}
		return a.equals(b);
	}

}
