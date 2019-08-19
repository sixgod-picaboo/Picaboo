package com.sixgod.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sixgod.pojo.Goods_path;
import com.sixgod.pojo.Shopping_Carts;

@Repository
public interface CarDao {
	//通过用户id获取用户购物车的信息
	 List<Shopping_Carts> queryCartsByUserId(String user_id);
	 
	//通过用户id 商品id 商品尺码删除购物车的指定商品
	 int delCartsSingleByGoodsIdAndGoodsSizeAndUserId(String user_id, String goods_id, String goods_size);
	 
	 //通过用户id清空该用户的购物车
	 int cleanCartsByUserId(String user_id); 
	 
	 //通过用户id 商品id 商品尺码使得 指定购物车商品数量改变
	 int updateCartsNumByUserIdAndGoodsIdAndGoodsSizeAndGoodsSize(String user_id, String goods_id,
				String goods_num, String goods_size);
	 
	 //默认获取一张商品图片通过商品id
	 List<Goods_path> queryPhotoPathByGoodsId(String goods_id);
	 
}
