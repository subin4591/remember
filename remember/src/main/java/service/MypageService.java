package service;

import dto.UserDTO;

public interface MypageService {
	public UserDTO getUser(String user_id);
	
	public int userUpdate(UserDTO dto);
	
	public int deleteUser(UserDTO dto);

	public int deleteLike(UserDTO dto);

	public int deleteComment(UserDTO dto);
}
