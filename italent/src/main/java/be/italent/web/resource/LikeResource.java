package be.italent.web.resource;

import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.hateoas.ResourceSupport;

@Data
@EqualsAndHashCode(callSuper = false)
public class LikeResource extends ResourceSupport {
	private int likeId;
	private UserResource user;
}