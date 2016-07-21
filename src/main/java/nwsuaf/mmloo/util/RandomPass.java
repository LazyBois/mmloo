package nwsuaf.mmloo.util;

import java.util.Random;

/**
 * @author LazyMan 此类提供随机密码
 */
public class RandomPass {
	
	/**
	 * @param min 随机最小值
	 * @param max 随机数最大值
	 * @return 一个整数
	 */
	public static String randomKey() {
		int min = 100000;
		int max = 999999;
		Random rand = new Random();
		int tmp = Math.abs(rand.nextInt());
		return tmp % (max - min + 1) + min+"";
	}
}
