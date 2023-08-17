package dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import dto.ListDTO;
import dto.QuotationDTO;

@Mapper
@Repository
public interface MainDAO {
	/// Main select
	// 어록 랜덤 조회
	public List<QuotationDTO> randQuotation(int num);
	
	// 존경해요 순 독립운동가 조회
	public List<Integer> mainLikeList(ListDTO dto);
	
	// Test
	public void insertTest(QuotationDTO dto);
}
