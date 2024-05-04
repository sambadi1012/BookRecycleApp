package com.DAO;

import java.util.List;

import com.entity.BookDtls;

public interface BooksDAO {
	
	public boolean addbooks(BookDtls b);
	
	public List<BookDtls> getAllBooks();
	
	public BookDtls getBookById(int id); 
	
	public boolean updateEditBooks(BookDtls b);
	
	public boolean deleteBooks(int id);
	
	public List<BookDtls> getNewBook();
	
	public List<BookDtls> getRecentBook();
	
	public List<BookDtls> getUsedBook();
	
	public List<BookDtls> getAllRecentBooks();
	
	public List<BookDtls> getAllNewBooks();
	
	public List<BookDtls> getAllUsedBooks();
	
	public List<BookDtls> getBookbyOld(String email);
	
	public boolean oldBookDelete(String email, int id);
	
	public List<BookDtls> getBookbySearch(String ch);
	
	}
