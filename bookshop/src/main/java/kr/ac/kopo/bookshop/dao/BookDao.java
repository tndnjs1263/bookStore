package kr.ac.kopo.bookshop.dao;

import java.util.List;

import kr.ac.kopo.bookshop.model.Book;
import kr.ac.kopo.bookshop.pager.Pager;

public interface BookDao {

	List<Book> list(Pager pager);

	void add(Book book);

	Book item(Long code);

	void update(Book item);

	void delete(Long code);

	int total(Pager pager);

}
