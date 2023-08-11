package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MainDAO;
import dto.QuotationDTO;

@Service("mainService")
public class MainService {
	@Autowired
	MainDAO dao;
	
	// Test
	public void insertTest(QuotationDTO dto) {
		dao.insertTest(dto);
	}
}
