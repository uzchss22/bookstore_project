package com.bookstore.controller;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;

public class CrawlingController {
    public static void main(String[] args) {
        String url = "https://example.com/bookstore"; // 도서 쇼핑몰 페이지 URL

        try {
            // Jsoup을 사용하여 URL에서 HTML 문서 가져오기
            Document document = Jsoup.connect(url).get();

            // 도서 정보가 담긴 HTML 요소 선택
            Elements books = document.select(".book-item"); // 예시: 각 도서를 나타내는 클래스 이름

            // 각 도서 정보 추출
            for (Element book : books) {
                String imageUrl = book.select(".book-image img").attr("src"); // 도서 이미지 URL
                String title = book.select(".book-title").text(); // 도서명
                String author = book.select(".book-author").text(); // 저자
                String price = book.select(".book-price").text(); // 가격
                String publishDate = book.select(".book-publish-date").text(); // 출판일

                // 추출한 정보 출력
                System.out.println("Image URL: " + imageUrl);
                System.out.println("Title: " + title);
                System.out.println("Author: " + author);
                System.out.println("Price: " + price);
                System.out.println("Publish Date: " + publishDate);
                System.out.println();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
