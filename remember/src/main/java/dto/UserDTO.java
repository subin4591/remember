package dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class UserDTO {
	String user_id, id, name, password, email;
	Date created_at, deleted_at;
}
