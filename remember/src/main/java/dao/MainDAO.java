package dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import dto.QuotationDTO;

@Mapper
@Repository
public interface MainDAO {
	// Test
	public void insertTest(QuotationDTO dto);
}
