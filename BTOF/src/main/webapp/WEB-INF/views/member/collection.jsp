<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link type="text/css" href="/resources/css/main.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="/resources/js/main.js" defer></script>
	
</head>
<body>
	<!-- 상단 네비 -->
	<!--  
	<%@ include file="/WEB-INF/views/common/nav.jsp" %>
	-->
	
	<!-- 중앙 -->
	<!-- 중앙 좌측 -->
	
	<div id="wrap">
	    <main class="body_inner">
	        <section id="main_top" class="main_inner"><h3>My NFT</h3></section>
	        <section id="main_left" class="main_inner">
	        	<h3>Collection</h3>
	        	<h4>판매상태</h4>
	        	<input type="checkbox" name="all">전체보기<br/>
	        	<input type="checkbox" name="onsale">판매중<br/>
	        	<input type="checkbox" name="notsale">미판매
	        	
	        	
	        </section>
	        <section id="main_right" class="main_inner">
		        <h3 style="display: none;">갤러리</h3>
		        <div class="productFilter">
		        	<select>
		        		<option></option>
		        		<option>가격순</option>
		        		<option>최신순</option>
		        		<option>이름순</option>
	        		</select>
	       		</div>
		        <div class="product"></div>
		        <div class="product"></div>
		        <div class="product"></div>
		        <div class="product"></div>
		        <div class="product"></div>
		        <div class="product"></div>
		        <div class="product"></div>
		        <div class="product"></div>
		        <div class="product"></div>
	        </section>
	    </main>
	</div>
	<!-- 푸터 
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	-->
	
	<script>


	</script>
</body>
</html>