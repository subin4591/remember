package service;

import java.util.HashMap;
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
	
	public int userUpdate(String user_id, String password) {
		return mypagedao.userUpdate(user_id, password);
	}
	
	public int deleteUser(String user_id) {
		return mypagedao.deleteUser(user_id);
	}

	public int deleteLike(String user_id) {
		return mypagedao.deleteLike(user_id);
	}
	
	public int deleteLikeno(HashMap<String, Object> paramMap) {
		return mypagedao.deleteLikeno(paramMap);
	}

	public int deleteComment(String user_id) {
		return mypagedao.deleteComment(user_id);
	}
	
	public List<LikeDTO> getLike(HashMap<String, Object> llistmap) {
		return mypagedao.getLike(llistmap);
	}
	
	public int getLikeCount(String user_id) {
		return mypagedao.getLikeCount(user_id);
	}
	
	public List<CommentDTO> getComment(HashMap<String, Object> cmtlistmap) {
		return mypagedao.getComment(cmtlistmap);
	}
	
	public int getCommentCount(String user_id) {
		return mypagedao.getCommentCount(user_id);
	}
}
