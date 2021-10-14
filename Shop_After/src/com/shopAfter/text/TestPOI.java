package com.shopAfter.text;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.shopAfter.util.ReadExcel;

public class TestPOI {

	public static void main(String[] args) throws IOException {
		List<String> list = new ArrayList<String>();
		List<String> list1 = new ArrayList<String>();
		list.add("姓名");
		list.add("电话");
		list1.add("张三");
		list1.add("123");
		list1.add("王五");
		list1.add("123");
		list1.add("李四");
		list1.add("123");
		ReadExcel excels = new ReadExcel();
	/*	excels.PoiExcel(list, list1);*/
	}
}
