package dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import dto.QuotationDTO;

@Mapper
@Repository
public interface MainDAO {
	/// Main select
	// 어록 랜덤 조회
	public List<QuotationDTO> randQuotation(int num);
	
	// Test
	public void insertTest(QuotationDTO dto);
}
