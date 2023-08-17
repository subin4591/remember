package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MainDAO;
import dto.ListDTO;
import dto.QuotationDTO;

@Service("mainService")
public class MainService {
	@Autowired
	MainDAO dao;
	
	/// Main select
	// 어록 랜덤 조회
	public List<QuotationDTO> randQuotation(int num) {
		return dao.randQuotation(num);
	}
	
	// 존경해요 순 독립운동가 조회
	public List<Integer> mainLikeList(ListDTO dto) {
		return dao.mainLikeList(dto);
	}
	
	// Test
	public void insertTest(QuotationDTO dto) {
		dao.insertTest(dto);
	}
}
