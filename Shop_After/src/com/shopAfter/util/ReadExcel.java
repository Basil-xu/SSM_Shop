package com.shopAfter.util;

import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.shopAfter.entity.Statement;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2019\3\9 0009.
 */
public class ReadExcel {

	
	
	
    public void PoiExcel(List<String> list,List<Statement> list1) throws IOException {


    	 String fileName = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()).toString()+".xlsx";
        //创建工作簿 类似于创建Excel文件
        XSSFWorkbook workbook=new XSSFWorkbook();
         //创建 sheetname页名
        XSSFSheet sheet = workbook.createSheet("员工信息");
        sheet.setColumnWidth(3,20*256);//给第3列设置为20个字的宽度
        sheet.setColumnWidth(4,20*256);//给第4列设置为20个字的宽度
            //创建一行,下标从0开始
        XSSFRow row = sheet.createRow(0);
        
        
        //获取标题行
        row = sheet.createRow(0);
        for (int i = 0; i < list.size(); i++) {
        	row.createCell(i).setCellValue(list.get(i));
        	System.out.println(list.get(i));
		}
        //获取内容
        for (int j = 0; j < list1.size(); j++) {
        	row = sheet.createRow(j+1);
        	for (int i = 0; i <list.size() ; i++) {
        		if((i+1)%2==1){        			
        			row.createCell(i).setCellValue(list1.get(j).getName());
        		}else{
        			row.createCell(i).setCellValue(list1.get(j).getNum());
        		}
			}
        }
        for (int i = 0;i<list1.size();i++) {
			list1.get(i);
		}
        
       /* // 设置表里内容
        row = sheet.createRow(0);
        row.createCell(0).setCellValue("姓名");
        row.createCell(1).setCellValue("年龄");
        row.createCell(2).setCellValue("性别");
        row.createCell(3).setCellValue("生日");
        row.createCell(4).setCellValue("手机号");
        
        row = sheet.createRow(1);
        row.createCell(0).setCellValue("T");
        row.createCell(1).setCellValue("保密");
        row.createCell(2).setCellValue("男");
        row.createCell(3).setCellValue("保密");
        row.createCell(4).setCellValue("12121212121");

        row = sheet.createRow(2);
        row.createCell(0).setCellValue("T");
        row.createCell(1).setCellValue("18");
        row.createCell(2).setCellValue("女");
        row.createCell(3).setCellValue("2000-01-01");
        row.createCell(4).setCellValue("12121212122");*/
        //设定 路径
        File file = new File("E:\\Userpojo\\TextExcel\\"+fileName);
        FileOutputStream stream = new FileOutputStream(file);
        // 需要抛异常
        workbook.write(stream);
         //关流
        stream.close();
    }


}

