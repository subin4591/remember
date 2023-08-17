package dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import dto.CommentDTO;

@Mapper
@Repository
public interface DetailDAO {
	public int likeCount(int mng_no);
	public void insertLike(int mng_no, String id);
	public List<CommentDTO> selectComment(int mng_no);
	public void insertComment(int mng_no, String id, String contents);
}
