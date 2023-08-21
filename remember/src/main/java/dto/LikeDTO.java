package dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class LikeDTO {
	String like_id;
	int mng_no;
	String user_id;
	int count;
}
