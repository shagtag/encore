package com.encore.model;

/**
 * @brief
 * @details
 * @param
 * @author user
 * @date 2018. 12. 11.
 * @version
 *
 */
/**
 * @brief
 * @details
 * @param
 * @author user
 * @date 2018. 12. 11.
 * @version
 *
 */
public class BookDTO {
	private String title;
	private String author;
	private String publisher;
	public BookDTO() {
		System.out.println("BookDTO 기본생성자");
	}
	public BookDTO(String title, String author, String publisher) {
		super();
		this.title = title;
		this.author = author;
		this.publisher = publisher;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	@Override
	public String toString() {
		return "BookDTO [title=" + title + ", author=" + author + ", publisher=" + publisher + "]";
	}
	
	
	
}
