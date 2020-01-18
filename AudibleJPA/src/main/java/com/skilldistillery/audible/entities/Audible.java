package com.skilldistillery.audible.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Audible {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;
	public String author;
	public String narrator;
	public String length;

	@Column(name="release_date")
	public String releaseDate;
	
	public String categories;
	
	public String description;
	
	@Column(name="book_image")
	public String bookImage;
	
	

	public Audible(int id, String name, String author, String narrator, String length, String releaseDate,
			String categories, String description, String bookImage) {
		super();
		this.id = id;
		this.name = name;
		this.author = author;
		this.narrator = narrator;
		this.length = length;
		this.releaseDate = releaseDate;
		this.categories = categories;
		this.description = description;
		this.bookImage = bookImage;
	}



	@Override
	public String toString() {
		return "Audible [id=" + id + ", name=" + name + ", author=" + author + ", narrator=" + narrator + ", length="
				+ length + ", releaseDate=" + releaseDate + ", categories=" + categories + ", description="
				+ description + ", bookImage=" + bookImage + "]";
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getAuthor() {
		return author;
	}



	public void setAuthor(String author) {
		this.author = author;
	}



	public String getNarrator() {
		return narrator;
	}



	public void setNarrator(String narrator) {
		this.narrator = narrator;
	}



	public String getLength() {
		return length;
	}



	public void setLength(String length) {
		this.length = length;
	}



	public String getReleaseDate() {
		return releaseDate;
	}



	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}



	public String getCategories() {
		return categories;
	}



	public void setCategories(String categories) {
		this.categories = categories;
	}



	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	public String getBookImage() {
		return bookImage;
	}



	public void setBookImage(String bookImage) {
		this.bookImage = bookImage;
	}



	public Audible() {

	}

}
