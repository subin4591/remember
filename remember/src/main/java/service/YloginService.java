package service;

import dto.UserDTO;

public interface YloginService {
	void register(UserDTO user);
    UserDTO login(String email, String password);
}
