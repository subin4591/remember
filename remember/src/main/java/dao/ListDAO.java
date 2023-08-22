package dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import dto.ListDTO;

@Mapper
@Repository
public interface ListDAO {
	/// List select
	// 존경해요 개수
	public Integer getListLike(int mng_no);
	
	// 댓글 개수
	public Integer getListComment(int mng_no);
	
	// 정렬
	public List<Integer> sortList(ListDTO dto);
	
	// 정렬 개수
	public Integer sortListCount(ListDTO dto);
}
