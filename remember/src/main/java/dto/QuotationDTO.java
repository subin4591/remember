package dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class QuotationDTO {
	int mng_no;
	String name, contents;
}
