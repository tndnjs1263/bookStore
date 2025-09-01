package kr.ac.kopo.bookshop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.bookshop.model.Book;
import kr.ac.kopo.bookshop.pager.Pager;

@Repository
public class BookDaoImpl implements BookDao {
	final String path = "book.";
	
	@Autowired
	SqlSession sql;
	
	@Override
	public List<Book> list(Pager pager) {
		return sql.selectList(path + "list", pager);
	}

	@Override
	public void add(Book book) {
		sql.insert(path + "add", book);
	}

	@Override
	public Book item(Long code) {
		return sql.selectOne(path + "item", code);
	}

	@Override
	public void update(Book item) {
		sql.update(path + "update", item);
	}

	@Override
	public void delete(Long code) {
		sql.delete(path + "delete", code);
	}

	@Override
	public int total(Pager pager) {
		return sql.selectOne(path + "total", pager);
	}

}
