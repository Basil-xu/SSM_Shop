package com.shopAfter.controller;
/**
 * 商品信息 控制器
 */
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.shopAfter.dao.product.ProductMapper;
import com.shopAfter.dao.user.administratorMapper;
import com.shopAfter.entity.Admin;
import com.shopAfter.entity.Goodsinfo;
import com.shopAfter.entity.Image;
import com.shopAfter.entity.TbClass;

@Controller
@RequestMapping("product")
public class ProductController {

	@Resource
	ProductMapper dao;
	/* 查询*/
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String Getlist(Map map,int index,String GoodsName){
		GoodsName=GoodsName==null?"":GoodsName;
		if(index==0){
			index=1;
		}else{
			index=index;
		}
		List<Goodsinfo> list = dao.list((index-1)*5, "%"+GoodsName+"%");
		for (Goodsinfo goodsinfo : list) {
			System.out.println(goodsinfo.getGoodsID()+","+goodsinfo.getGoodsName());
		}
		int pagecount=dao.pagecount("%"+GoodsName+"%");
		int pagecounts = pagecount%5==0?pagecount/5:pagecount/5+1;
		map.put("list", list);
		map.put("pagecounts",pagecounts);
		map.put("name", GoodsName);
		return "Product/Product";
	}
	
	/*删除*/
	@RequestMapping(value="/del",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	@ResponseBody
	public String Getlist(String id,HttpServletRequest request){
		List<Image> list = dao.listImage(id);
		List<String> imageList = new ArrayList<String>(); 
		for (Image image : list) {
			String name = image.getImageName();
			imageList.add(name);
		}
		
		for (int i = 0; i < imageList.size(); i++) {
			String ImageName = "/static/img/"+imageList.get(i);
			File files = new File(request.getSession().getServletContext().getRealPath(ImageName));
			if(!files.exists()){
				System.out.println("删除文件失败："+files+"不存在！");
				return "redirect:/product/list?index=1";
			}else{
				if(files.isFile()){
					files.delete();
				}
			}
		}
		
		dao.delImage(id);
		int i = dao.del(id);
		return JSONArray.toJSONString(i);
	}
	
	
	
	/*批量删除*/
	@RequestMapping(value="/delAll",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	@ResponseBody
	public String delAll(String str){
		List<String> list = new ArrayList<String>();
		for (String i : str.split(",")) {
			if (i !=null && i != "") {
				list.add(i);
			}
		}
		dao.delAllImage(list);
		int i = dao.delAll(list);
		return JSONArray.toJSONString(i);
	}
	
	/*修改*/
	@RequestMapping(value="/update",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object GetUpdate(Goodsinfo  goodsinfo){
		int i = dao.update1(goodsinfo);
		return JSONArray.toJSONString(i);
	}
	
	
	
	
	
	
	/*查询类型表*/
	@RequestMapping(value="/Typelist",method=RequestMethod.GET,produces="application/json; charset=utf-8")
	public String GetlistTtype(Map map,Integer index,String s1,String s2){
		s1=s1==null?"":s1;
		s2=s2==null?"":s2;
		if(s1.equals("--请选择-")){
			s1 = "";
		}
		if(s2.equals("--请选择--")){
			s2 = "";
		}
		if(index==null){
			index=1;
		}else{
			index=index;
		}
		List<Goodsinfo> lists = dao.typelist((index-1)*5,s1,s2);
		for (Goodsinfo goodsinfo : lists) {
			System.out.println(goodsinfo.getClassID1());
		}
		int pagecount=dao.pagecountType(s1, s2);
		int pagecounts = pagecount%5==0?pagecount/5:pagecount/5+1;
		map.put("lists", lists);
		map.put("pagecounts",pagecounts);
		map.put("s1", s1);
		map.put("s2", s2);
		return "Product/ProductType";
	}
	/*二级联动*/
	@RequestMapping(value="/Typelists",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object GetlistTtype2(String commodityId){
		List<TbClass> lists = dao.list2(commodityId);
		for (TbClass tbClass : lists) {
			System.out.println(tbClass.getClassID());
		}
		return JSONArray.toJSONString(lists);
	}
	
	/*批量删除*/
	@RequestMapping(value="/dels",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	@ResponseBody
	public String GetDels(String id){
		int i = dao.del(id);
		return JSONArray.toJSONString(i);
	}
	/*添加*/
	@RequestMapping(value="/add",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	public String Getadd(@RequestParam("f1")MultipartFile[] fileob,Goodsinfo goodsinfo,HttpServletRequest request) throws IllegalStateException, IOException{
		
		for (int i = 0; i < fileob.length; i++) {
			String path = request.getSession().getServletContext().getRealPath("static"+File.separator+"img");
			String newName = UUID.randomUUID().toString();
			File f1 = new File(path+"/"+newName+".jpg");
			if (!f1.exists()) {
				f1.mkdirs();
			}
			fileob[i].transferTo(f1);
			goodsinfo.setGoodsUrl(newName+".jpg");
		}
		//获取当前时间
		Date date = new Date();
		SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd :hh:mm:ss");
	    String str = dateFormat.format(date);
	    //把转换的字符串赋值给实体类
		goodsinfo.setAddDate(str);
		dao.add(goodsinfo);
		return "redirect:/product/list?index=1";
	}
	/*添加图片表*/
	@RequestMapping(value="/imgAdd",method=RequestMethod.POST)
	public String Getimgadd(@RequestParam("f2")MultipartFile[] fileob, Image image,HttpServletRequest request) throws IllegalStateException, IOException{
		System.out.println("====================进入后");	
		System.out.println("====================进入后");	
		System.out.println("=========图片===========进入后");
		try {
			for (int i = 0; i < fileob.length; i++) {
				MultipartFile multipartFile = fileob[i];
				String path = request.getSession().getServletContext().getRealPath("static"+File.separator+"img");
				String newName = UUID.randomUUID().toString();
				File f2 = new File(path+"/"+newName+".jpg");
				if (!f2.exists()) {
					f2.mkdirs();
				}
				fileob[i].transferTo(f2);
				image.setImageUrl(newName+".jpg");
				image.setImageName(newName+".jpg");
				dao.imgAdd(image);
			}
		} catch (Exception e) {
			return "redirect:/product/list?index=1";
			// TODO: handle exception
		}finally{
			return "redirect:/product/list?index=1";
		}
		
	}

	@RequestMapping(value="/listpage",method=RequestMethod.GET,produces="application/json; charset=utf-8")
	@ResponseBody
	public String Getlistpage(String GoodsID){
		int j = dao.listImagepage(GoodsID);
		return JSONArray.toJSONString(j);
	}
	
	/*显示图片*/
	@RequestMapping(value="/listImgae",method=RequestMethod.GET,produces="application/json; charset=utf-8")
	@ResponseBody
	public String GetImagelist(String GoodsID){
		List<Image> list = dao.listImage(GoodsID);
		for (Image image : list) {
			System.out.println(image.getImageID());
		}
		
		return JSONArray.toJSONString(list);
	}
	
	/*删除图片表*/
	@RequestMapping(value="/delimg",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	@ResponseBody
	public String GetdelImgId(String id,String file,HttpServletRequest request){
		System.out.println("=========进入删除图片控制器========");
		System.out.println("=========进入删除图片控制器========");
		System.out.println("=========进入删除图片控制器========");
		File files = new File(request.getSession().getServletContext().getRealPath(file));
		int i = 0;
		if(!files.exists()){
			System.out.println("删除文件失败："+files+"不存在！");
			return "redirect:/product/list?index=1";
		}else{
			if(files.isFile()){
				 files.delete();
				 i = dao.delImageID(id);
			}
		}
		return JSONArray.toJSONString(i);
	}
	
	/*修改img表*/
	/*@RequestMapping(value="upp",method=RequestMethod.POST,produces="application/json; charset=utf-8")
	@ResponseBody
	public Object Getadd( @RequestParam("img") MultipartFile file,@RequestParam("ImageID") int ImageID,HttpServletRequest request) throws IllegalStateException, IOException{
		System.out.println("=============img==========");
		System.out.println("=============img==========");
		System.out.println("=============img==========");
		String name = "";
		MultipartHttpServletRequest mpRequest = (MultipartHttpServletRequest) request;  
		String name = file.getOriginalFilename();
		String path = request.getSession().getServletContext().getRealPath("static"+File.separator+"img");
		String newName = UUID.randomUUID().toString();
		name=newName+"jpg";
			File f3 = new File(path+"/"+newName+".jpg");
			if (!f3.exists()) {
				f3.mkdirs();
			}
			file.transferTo(f3);
			name = newName+"jpg";
			
		int s = dao.updateImg(ImageID, name);
		return JSONArray.toJSONString(s);
	}*/
	
	/*修改*/
	@RequestMapping(value="upp",method=RequestMethod.POST)
	@ResponseBody
	public String Getup(@RequestParam("f3")MultipartFile[] fileob,String ImageID,HttpServletRequest request) throws IllegalStateException, IOException{
		String name = "";
		//更具id查询image表中的图片名称
		List<Image> list = dao.listImagedel(ImageID);
		List<String> imgName = new ArrayList<>();
		for (Image image : list) {
			imgName.add(image.getImageName().toString());
		}
	
		for (int i = 0; i < imgName.size(); i++) {
			File files = new File(request.getSession().getServletContext().getRealPath("/static/img/"+imgName.get(i).toString().replaceAll("\\s*|\t|\r|\n", "")));
			if(!files.exists()){
				System.out.println("删除文件失败："+files+"不存在！");
				return JSONArray.toJSONString("no");
			}else{
				if(files.isFile()){
					 files.delete();
					 String path = request.getSession().getServletContext().getRealPath("static"+File.separator+"img");
					 String newName = UUID.randomUUID().toString();
					 File f1 = new File(path+"/"+newName+".jpg");
					 if (!f1.exists()) {
						 f1.mkdirs();
					 }
					 fileob[0].transferTo(f1);
					 name = newName+".jpg";
				}
			}
		}
		dao.updateImg(ImageID, name);
		return "redirect:/product/list?index=1";
	}
}
