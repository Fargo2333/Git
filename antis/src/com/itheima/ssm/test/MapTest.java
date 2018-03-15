package com.itheima.ssm.test;

import java.util.HashMap;
import java.util.Map;

public class MapTest {
	public static void main(String[] args) {
		Map map = new HashMap();
		
		map.put("name", "zhangsan");
		map.put("name1", "zhangsan1");
		map.put("name2", "zhangsan2");
		
		System.out.println(map);
	}
}
