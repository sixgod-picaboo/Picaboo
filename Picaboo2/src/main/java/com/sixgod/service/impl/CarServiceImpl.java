package com.sixgod.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sixgod.dao.CarDao;
import com.sixgod.pojo.Goods_path;
import com.sixgod.pojo.Shopping_Carts;
import com.sixgod.service.CarService;
@Service("carservice")
public class CarServiceImpl implements CarService {
	
	@Resource
	private CarDao cardao;
	
	/**
	 * 通过用户id获取用户购物车的信息
	 */
	@Transactional(rollbackFor = Exception.class)
	@Override
	public List<Shopping_Carts> queryCartsByUserId(String user_id) {
		// TODO Auto-generated method stub
		List<Shopping_Carts> list = cardao.queryCartsByUserId(user_id);
		for (Shopping_Carts shopping_Carts : list) {
			List<Goods_path> gp = cardao.queryPhotoPathByGoodsId(shopping_Carts.getGoods_id());
			shopping_Carts.setGphoto_path(gp.get(0).getGphoto_path());
		}
		return list;
	}
	/**
	 * 通过用户id 商品id 商品尺码删除购物车的指定商品
	 */
	@Override
	public int delCartsSingleByGoodsIdAndGoodsSizeAndUserId(String user_id, String goods_id, String goods_size) {
		// TODO Auto-generated method stub
		return cardao.delCartsSingleByGoodsIdAndGoodsSizeAndUserId(user_id, goods_id, goods_size);
	}
	/**
	 * 通过用户id清空该用户的购物车
	 */
	@Override
	public int cleanCartsByUserId(String user_id) {
		// TODO Auto-generated method stub
		return cardao.cleanCartsByUserId(user_id);
	}
	/**
	 * 通过用户id 商品id 商品尺码使得 指定购物车商品数量改变
	 */
	@Override
	public int updateCartsNumByUserIdAndGoodsIdAndGoodsSizeAndGoodsSize(String user_id, String goods_id,
			String goods_num, String goods_size) {
		// TODO Auto-generated method stub
		return cardao.updateCartsNumByUserIdAndGoodsIdAndGoodsSizeAndGoodsSize(user_id, goods_id, goods_num, goods_size);
	}
	/**
	 * 默认获取一张商品图片通过商品id
	 */
	@Override
	public List<Goods_path> queryPhotoPathByGoodsId(String goods_id) {
		// TODO Auto-generated method stub
		return cardao.queryPhotoPathByGoodsId(goods_id);
	}
	
	
}
