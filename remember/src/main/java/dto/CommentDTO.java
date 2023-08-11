package dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class CommentDTO {
	String comment_id, user_id;
	int mng_no;
	String contents;
	Date created_at;
}
