package dao;

import dto.UserDTO;

public interface SignDAO {
	void insertUser(UserDTO user);
    UserDTO findByUserId(String userId);
    UserDTO findByEmailAndPassword(String email, String password);
}
