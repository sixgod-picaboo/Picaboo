package com.sixgod.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.sixgod.pojo.Shopping_Carts;
import com.sixgod.pojo.User;
import com.sixgod.service.CarService;
/**
 * 购物车处理器
 * @author 陈由至
 *
 */
@RestController
public class CarController {

	@Resource(name = "carservice")
	private CarService carservice;
	
	/**
	 * 页面转发到购物车界面
	 * @return
	 */
	@RequestMapping("/cart.html")
	public ModelAndView gocart() {
		System.out.println("123");
		ModelAndView mav = new ModelAndView("cart");
		return mav;

	}
	
	/**
	 * 加载购物车
	 * @param session
	 * @param response
	 * @return
	 */
	@RequestMapping("/querycarts.html")
	public List<Shopping_Carts> doQueryCarts(HttpSession session, HttpServletResponse response) {
		// User u = (User)
		session.getAttribute("user");
		// String userid = u.getUser_id();
		response.setContentType("html/text;charset=utf-8");
		List<Shopping_Carts> list = carservice.queryCartsByUserId("123456@qq.com");
		return list;
	}
	
	/**
	 * 从购物车删除单个商品
	 * @param session
	 * @param request
	 * @param goodssize
	 * @param goodsid
	 * @return
	 */
	@RequestMapping("/delsinglecarts.html")
	public int dodelSingleCarts(HttpSession session, HttpServletRequest request,String goodssize,String goodsid) {
		User u = (User) session.getAttribute("user");
		String userid = u.getUser_id();
		int i = carservice.delCartsSingleByGoodsIdAndGoodsSizeAndUserId(userid, goodsid, goodssize);
		if (i > 0) {
			return 1;
		}
		return 0;
		
	}

}
