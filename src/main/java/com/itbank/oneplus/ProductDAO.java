package com.itbank.oneplus;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Repository
public interface ProductDAO {

	// 매인 전체 상품 불러오기
	@Select("select * from productMain order by idx "
			+ "offset #{offset} rows "
			+ "fetch next 20 rows only")
	List<ProductDTO> selectList(int offset);
	
	// 매인 냉동식품 불러오기
	@Select("select * from productMain where categorycode between '300019' and '300024' "
			+ "or categorycode between '300144' and '300145' order by idx"
			+ " offset #{offset} rows "
			+ "fetch next 20 rows only")
	List<ProductDTO> freezingList(int offset);
	
	// 매인 신선식품 불러오기
	@Select("select * from productMain where categorycode between '300001' and '300048' "
			+ "or categorycode between '300072' and '300099' "
			+ "order by idx"
			+ " offset #{offset} rows "
			+ "fetch next 20 rows only")
	List<ProductDTO> freshList(int offset);
	
	// 매인 가공식품 불러오기
	@Select("select * from productMain where categorycode between '300202' and '300219' "
			+ "or categorycode between '300340' and '300354' order by idx"
			+ " offset #{offset} rows "
			+ "fetch next 20 rows only")
	List<ProductDTO> processingList(int offset);
	
	// 매인 생활용품 불러오기
	@Select("select * from productMain "
			+ "where categorycode between '300501' and '300584' "
			+ "order by idx desc "
			+ "offset #{offset} rows "
			+ "fetch next 20 rows only")
	List<ProductDTO> lifeList(int offset);
	
	// 카테고리에서 클릭한 상품 리스트 보여주기
	List<ProductDTO> categoryList(HashMap<String, String> idx);

	@Select("select * from productMain where idx=#{idx}")
	ProductDTO selectProductOne(int idx);

	@Select("select * from productMain where categorycode=#{categorycode} order by buyCnt offset 0 rows fetch next 6 rows only")
	List<ProductDTO> catehotList(int categorycode);

	@Select("select * from productMain order by buyCnt offset 0 rows fetch next 6 rows only")
	List<ProductDTO> allcatehotList();

	@Insert("insert into product_wishlist (productMain_idx, parent_member_idx) values (#{productMain_idx}, #{parent_member_idx})")
	int wishlist(HashMap<String, String> ob);

	@Select("select count(*) from product_wishlist where parent_member_idx=#{parent_member_idx} and productmain_idx=#{productMain_idx}")
	int heartload(HashMap<String, String> ob);

	@Delete("delete product_wishlist where parent_member_idx=#{parent_member_idx} and productmain_idx=#{productMain_idx}")
	int deletewishList(HashMap<String, String> ob);

	// 리스트 상단 검색결과 xml
	String categoryName(HashMap<String, String> idx);

	// 검색 + 추천순 정렬 
	@Insert("insert into productcart values (#{cnt}, #{member_idx}, #{productMain_idx})")
	int insertproductcart(HashMap<String, String> ob);

	@Select("select avg(reviewGrade) as prodAvggrade from review where productMain_idx=#{productMain_idx}")
	String prodAvggrade(int productMain_idx);

	@Select("select * from productSummary where productMain_idx=#{idx}")
	ProductSummaryDTO prodSummaryOne(int idx);
	
	@Select("select distinct P.* , (select count(*) from review where productMain_idx = P.idx) as rcnt from productMain P" + 
			"    where P.productName like '%${param}%'" + 
			"    order by ${order}")
	List<ProductDTO> selectSearchList(HashMap<String, String> map);

	// 상품 이미지에서 바로 장바구니 담기
	@Insert("insert into productCart values (1, #{member_idx}, #{productMain_idx})")
	int imgcart(HashMap<String, String> idx);

	@Update("update productCart set cnt = cnt+1")
	int updatecart(HashMap<String, String> idx);

	@Select("select cnt from productCart where member_idx=${member_idx} and productMain_idx=${productMain_idx}")
	String getcnt(HashMap<String, String> param);

	// 중분류 개수
	@Select("select count(*) from productmain a, category b" + 
			" where b.productMain_categoryCode = a.categorycode" + 
			" and b.category2 like '%${category2}%'")
	String count(HashMap<String, String> idx);

	// 소분류 개수
	@Select("select count(*) from productmain a, category b" + 
			" where b.productMain_categoryCode = a.categoryCode" + 
			" and b.productMain_categoryCode like '%${productMain_categoryCode}%'")
	String nullcount(HashMap<String, String> idx);

	// 연관검색어
	@Select("SELECT categoryName from category" 
			 + "    where categoryName not like '%/%'"  
			 + "	ORDER BY DBMS_RANDOM.VALUE"  
			 + "    offset 0 rows fetch next 7 rows only")
	List<String> relatedSearch();

	@Select("select count(*) from review where ${string}=#{string2} and productMain_idx=#{productMain_idx}")
	int getpState(@Param("string")String string, @Param("string2")String string2, @Param("productMain_idx")int productMain_idx);

	@Select("select count(*) from review where productMain_idx=#{productMain_idx}")
	int allreviewCnt(int productMain_idx);

	int selectreviewCount(HashMap<String, Object> param);

	List<ReviewDTO> selectreviewList(HashMap<String, Object> param);

	@Select("select productImg from productMain where idx=#{productMain_idx}")
	String prodCookie(HashMap<String, String> productMain_idx);

	@Update("update productcart set cnt=#{cnt} where productMain_idx=#{productMain_idx} and member_idx=#{member_idx}")
	int updateproductcart(HashMap<String, String> ob);

	
}
