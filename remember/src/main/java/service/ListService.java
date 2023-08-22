package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ListDAO;
import dto.ListDTO;

@Service("listService")
public class ListService {
	@Autowired
	ListDAO dao;
	
	/// List select	
	// 존경해요 개수
	public Integer getListLike(int mng_no) {
		Integer result = dao.getListLike(mng_no);
		if (result == null) {
			return 0;
		}
		return result;
	}
	
	// 댓글 개수
	public Integer getListComment(int mng_no) {
		Integer result = dao.getListComment(mng_no);
		if (result == null) {
			return 0;
		}
		return result;
	}
	
	// 정렬
	public List<Integer> sortList(ListDTO dto) {
		return dao.sortList(dto);
	}
	
	// 정렬 개수
	public Integer sortListCount(ListDTO dto) {
		Integer result = dao.sortListCount(dto);
		if (result == null) {
			return 0;
		}
		return result;
	}
}
