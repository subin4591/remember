package dto;

import lombok.Data;

@Data
public class ListDTO {
	int mng_no, like, comment, start, end;
	
	// 메소드
	public void calcNum(int page, int divNum) {
		this.start = (page - 1) * divNum;
		this.end = divNum;
	}
}
