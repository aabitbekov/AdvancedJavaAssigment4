package astanait.com.WithDB;

import java.util.List;

import astanait.com.Classes.Book;
import astanait.com.intefaces.IEntityRepository;

public class IBookRepo implements IEntityRepository<Book> {
	DB db = new DB();

	@Override
	public void add(Book entity) {
		db.create(
				entity.getISBN(),
				entity.getName(),
				entity.getAuthor(),
				entity.getImage()
				);
		
	}

	@Override
	public void update(Book entity) {
		db.update(
				entity.getISBN(),
				entity.getName(),
				entity.getAuthor(),
				entity.getImage()
				);
	}

	@Override
	public List<Book> query(String sql) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Book queryOne(String sql) {
		// TODO Auto-generated method stub
		return null;
	}

}
