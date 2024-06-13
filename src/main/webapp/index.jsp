<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>도서 판매 사이트</title>
    <style>
		.search-container {
		    width: 100%;
		    display: flex;
		    justify-content: center;
		    padding-top: 10px;
		    background-color: #e1e1e1;
		}
		
		.search-container input[type="text"] {
		    width: 60%;
		    padding: 10px;
		    border: 1px solid #ccc;
		}
		
		.search-container button {
		    padding: 10px 20px;
		    background-color: #4CAF50;
		    color: white;
		    border: none;
		    cursor: pointer;
		}
		
		main {
		    width: 100%;
		    display: flex;
		    justify-content: center;
		    background-color: #e1e1e1;
		}
		
		.book-container {
		    display: grid;
		    grid-template-columns: repeat(auto-fill, 180px);
		    gap: 20px;
		    justify-content: center;
		    margin-top: 30px;
		    margin-bottom: 200px;
		    width: 80%;
		}
		
		.book {
		    border: 1px solid #ddd;
		    text-align: center;
		    background-color: #fff;
		    /* width: 180px;
		    height: 300px; */
		}
		
		.book-image {
		    height: 180px;
		    background-color: #eee;
		    margin-bottom: 10px;
		}
		
		.book-info h3, .book-info p {
		    margin: 5px 0;
		}
	</style>
</head>

<body>
	<%@ include file="top.jsp" %>
    <div class="search-container">
        <input type="text" placeholder="검색할 내용을 입력하세요.">
        <button>검색</button>
    </div>
    <main>
        <div class="book-container">
            <div class="book">
                <div class="book-image"></div>
                <div class="book-info">
                    <h3>도서명</h3>
                    <p>도서 저자</p>
                    <p>가격</p>
                    <p>출판일</p>
                </div>
            </div>
            <div class="book">
                <div class="book-image"></div>
                <div class="book-info">
                    <h3>도서명</h3>
                    <p>도서 저자</p>
                    <p>가격</p>
                    <p>출판일</p>
                </div>
            </div>
            <div class="book">
                <div class="book-image"></div>
                <div class="book-info">
                    <h3>도서명</h3>
                    <p>도서 저자</p>
                    <p>가격</p>
                    <p>출판일</p>
                </div>
            </div>
            <div class="book">
                <div class="book-image"></div>
                <div class="book-info">
                    <h3>도서명</h3>
                    <p>도서 저자</p>
                    <p>가격</p>
                    <p>출판일</p>
                </div>
            </div>
            <div class="book">
                <div class="book-image"></div>
                <div class="book-info">
                    <h3>도서명</h3>
                    <p>도서 저자</p>
                    <p>가격</p>
                    <p>출판일</p>
                </div>
            </div>
            <div class="book">
                <div class="book-image"></div>
                <div class="book-info">
                    <h3>도서명</h3>
                    <p>도서 저자</p>
                    <p>가격</p>
                    <p>출판일</p>
                </div>
            </div>
            <div class="book">
                <div class="book-image"></div>
                <div class="book-info">
                    <h3>도서명</h3>
                    <p>도서 저자</p>
                    <p>가격</p>
                    <p>출판일</p>
                </div>
            </div>
            <div class="book">
                <div class="book-image"></div>
                <div class="book-info">
                    <h3>도서명</h3>
                    <p>도서 저자</p>
                    <p>가격</p>
                    <p>출판일</p>
                </div>
            </div>
            <div class="book">
                <div class="book-image"></div>
                <div class="book-info">
                    <h3>도서명</h3>
                    <p>도서 저자</p>
                    <p>가격</p>
                    <p>출판일</p>
                </div>
            </div>
            <div class="book">
                <div class="book-image"></div>
                <div class="book-info">
                    <h3>도서명</h3>
                    <p>도서 저자</p>
                    <p>가격</p>
                    <p>출판일</p>
                </div>
            </div>
        </div>
    </main>
</div>
    <%@ include file="footer.jsp" %>
</body>

</html>