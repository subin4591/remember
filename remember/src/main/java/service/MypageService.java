package service;

import java.util.List;

import dto.CommentDTO;
import dto.LikeDTO;
import dto.UserDTO;

public interface MypageService {
	public UserDTO getUser(String user_id);
	
	public int userUpdate(UserDTO dto);
	
	public int deleteUser(UserDTO dto);

	public int deleteLike(UserDTO dto);

	public int deleteComment(UserDTO dto);
	
	public List<LikeDTO> getLike(String user_id);
	
	public List<CommentDTO> getComment(String user_id);
}
