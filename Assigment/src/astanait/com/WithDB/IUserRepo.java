package astanait.com.WithDB;

import java.util.List;
import astanait.com.Classes.User;
import astanait.com.intefaces.IEntityRepository;

public class IUserRepo implements IEntityRepository<User> {

	@Override
	public void add(User entity) {
		DB db = new DB();
		 db.create(
				entity.getId(),
				entity.getFname(),
				entity.getLname(),
				entity.getUsername(),
				entity.getPassword(),
				entity.getEmail()
				);
	}

	@Override
	public void update(User entity) {
		
	}

	@Override
	public List<User> query(String sql) {
		return null;
	}

	@Override
	public User queryOne(String sql) {
		return null;
	}
	

}
