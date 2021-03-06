package spring.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import spring.vo.Category;
import spring.vo.Notice;
import spring.vo.Option;
import spring.vo.Product;
import spring.vo.ProductCommand;
import spring.vo.Qna;
import spring.vo.Review;

public class ProductDao {
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public List<Product> productAll() { 
		List<Product> list = sqlSession.selectList("mybatis.mapper.product.productAll");
		return list;
	}
	public List<Product> productBest() { 
		List<Product> list = sqlSession.selectList("mybatis.mapper.product.productBest");
		return list;
	}
	public List<Product> productNew() { 
		List<Product> list = sqlSession.selectList("mybatis.mapper.product.productNew");
		return list;
	}
	public List<Product> category(String category) { 
		List<Product> list = sqlSession.selectList("mybatis.mapper.product.category",category);
		return list;
	}
	public List<Product> mainBest() { 
		List<Product> list = sqlSession.selectList("mybatis.mapper.product.mainBest");
		return list;
	}
	public List<Product> mainRandom() { 
		List<Product> list = sqlSession.selectList("mybatis.mapper.product.mainRandom");
		return list;
	}
	public List<Product> mainNew() { 
		List<Product> list = sqlSession.selectList("mybatis.mapper.product.mainNew");
		return list;
	}
	
	public int seqNumber() { 
		return sqlSession.selectOne("mybatis.mapper.product.seqNumber");
	}
	
	public int product_Name(String product_Name) { 
		return sqlSession.selectOne("mybatis.mapper.product.product_Name",product_Name);
	}
	
	
	
	public int updateProductNumber(int option_join_number) { 
		return sqlSession.selectOne("mybatis.mapper.product.updateProductNumber",option_join_number);
	}
	
	public void insertProduct(Product product) { 
		sqlSession.insert("mybatis.mapper.product.insertProduct",product);
	}
	

	public int selectJoinNumber(String name) { 
		return sqlSession.selectOne("mybatis.mapper.product.selectJoinNumber",name);
	}
	
	public void insertOption(Option option) { 
		sqlSession.insert("mybatis.mapper.option.insertOption",option);
	}
	
	public Product productSelect(int num) { 
		return sqlSession.selectOne("mybatis.mapper.product.productSelect",num);
	}
	
	public List<Option> productOptionSelect(int num) { 
		 List<Option> list =  sqlSession.selectList("mybatis.mapper.option.productOptionSelect",num);
		 return list;
	}
	
	public List<Category> categoryAll() { 
		List<Category> list = sqlSession.selectList("mybatis.mapper.category.categoryAll");
		return list;
	}
	
	public List<Qna> qnaList(long product_number){
		List<Qna> list = sqlSession.selectList("mybatis.mapper.qna.qnaList", product_number);
		return list;
	}
	
	public void updateProduct(Product product) { 
		sqlSession.update("mybatis.mapper.product.updateProduct",product);
	}
	
	public void updateOption(Option option) { 
		sqlSession.update("mybatis.mapper.option.updateOption",option);
	}
	
	public void optionDelete(Option option) { 
		sqlSession.delete("mybatis.mapper.option.optionDelete",option);
	}
	
	public ProductDao(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public long productNum(int num) {
		return sqlSession.selectOne("mybatis.mapper.product.productNum",num);
	}
	
	public int productNum2(int num) {
		return sqlSession.selectOne("mybatis.mapper.product.productNum",num);
	}

	public List<Review> reviewList(long product_number) {
		List<Review> list = sqlSession.selectList("mybatis.mapper.review.reviewList", product_number);
		return list;
	}

	public int selectAllNumBoard(long product_number) {
		return sqlSession.selectOne("mybatis.mapper.qna.selectProductNum",product_number);
	}

	public List<Qna> selectTargetBoard(int section, int pageNum, long product_number) {
		Map<String, Integer> map1 = new HashMap<>();
		map1.put("section", section);
		map1.put("pageNum", pageNum);
		map1.put("product_number", (int) product_number);
		List<Qna> list = sqlSession.selectList("mybatis.mapper.qna.qnaPorudctPagingList",map1);
		return list;
	}
	
	
	
}
