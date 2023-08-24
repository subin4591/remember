package dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import dto.CommentDTO;
import dto.LikeDTO;
import dto.UserDTO;

@Repository
@Mapper
public interface MypageDAO {
	public UserDTO getUser(String user_id);

	public int userUpdate(String user_id, String password);

	public int deleteUser(String user_id);

	public int deleteLike(String user_id);
	
	public int deleteLikeno(HashMap<String, Object> paramMap);

	public int deleteComment(String user_id);
	
	public List<LikeDTO> getLike(HashMap<String, Object> llistmap);
	
	public int getLikeCount(String user_id);
	
	public List<CommentDTO> getComment(HashMap<String, Object> cmtlistmap);
	
	public int getCommentCount(String user_id);
	
}
