package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.MypageDAO;
import dto.CommentDTO;
import dto.LikeDTO;
import dto.UserDTO;

@Service
public class MypageServiceImpl implements MypageService {
	@Autowired
	MypageDAO mypagedao;
	
	public UserDTO getUser(String user_id) {
		return mypagedao.getUser(user_id);
	}
	
	public int userUpdate(UserDTO dto) {
		return mypagedao.userUpdate(dto);
	}
	
	public int deleteUser(UserDTO dto) {
		return mypagedao.deleteUser(dto);
	}

	public int deleteLike(UserDTO dto) {
		return mypagedao.deleteLike(dto);
	}

	public int deleteComment(UserDTO dto) {
		return mypagedao.deleteComment(dto);
	}

	public List<LikeDTO> getLike(String user_id) {
		return mypagedao.getLike(user_id);
	}
	
	public List<CommentDTO> getComment(String user_id) {
		return mypagedao.getComment(user_id);
	}
}
