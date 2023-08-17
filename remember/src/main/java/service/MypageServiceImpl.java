package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MypageDAO;
import dto.UserDTO;

@Service
public class MypageServiceImpl implements MypageService {
	@Autowired
	MypageDAO mypagedao;
	
	public UserDTO getUser(String user_id) {
		return mypagedao.getUser(user_id);
	}

}
