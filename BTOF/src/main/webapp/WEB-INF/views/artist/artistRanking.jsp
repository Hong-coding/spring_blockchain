<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<style>
	th,td{padding:10px;}
	table{border-spacing:5px;}
	div{float:left; text-align: center;}
	</style>
	<meta charset="UTF-8">
	<title>artistRanking</title>
	<link href="/resources/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<%@ include file="/WEB-INF/views/common/nav.jsp" %>
	<br />
	<h1 align="center"> Ranking </h1>

	
		
		
		<tr>
			<td colspan="6" align="left">
				<!-- <button onclick="/board/content?artist_name=${prod_artist}">작가페이지로이동</button>  -->
			</td>
		</tr>
		
	<div>
		<h2>HOT ARTIST</h2>
		<table border="1">
	
			<c:forEach var="artistRankListByLikes" items="${artistRankListByLikes}" varStatus="status">
			<tr align="left">
				<th rowspan="3">${status.count}</th>
				<th >${artistRankListByLikes.artist_name}</th>
				<td ><input type="button" value="작가페이지로이동" onclick="window.location='/artist/artistPage?artist_name=${artistRankListByLikes.artist_name}'"/></td>
				<td colspan="2" align="right"><input type="button" value="구매하러가기" onclick="window.location='/product/product_detail?prod_no=${artistRankListByLikes.prod_no}'"></td>
			</tr>

			<tr >
				<td align="right">작가 URL</td>
				<td align="right">작가소개</td>
				<td align="center">대표작품</td>
				<td colspan="2" align="right">작품소개</td>
			</tr>
			<tr>
				<td >${artistRankListByLikes.artist_url}</td>
				<td >${artistRankListByLikes.artist_introd}</td>
				<td > <img src="<spring:url value='${artistRankListByLikes.prod_file}'/>" width="100" height="100" /> </td>
				<td >${artistRankListByLikes.prod_descr}</td>
			</tr>
			</c:forEach>
		</table>
	</div>	

		
		
	<div>
		<h2>최신 리스트</h2>
		<table  border="1">
			<%--
			<c:forEach var="RankingNum" items="${RankingNum}">
			<tr>
				<th>${RankingNum}</th>
			</tr>
			</c:forEach>  --%>
			
			<c:forEach var="artistListByStartDay" items="${artistListByStartDay}" varStatus="status">
				<tr align="left">
					<th>${status.count}</th>
					<th colspan="2">${artistListByStartDay.artist_name}</th>
					<td align="right"><input type="button" value="작가페이지로이동" onclick="window.location='/artist/artistPage?artist_name=${artistListByStartDay.artist_name}'"/></td>
					<td colspan="2" align="right"><input type="button" value="구매하러가기"/ onclick="window.location='/product/detail?prod_no=${artistListByStartDay.prod_name}'"></td>
				</tr>
				<tr>
					<td>작가명</td>
					<td>작가이미지</td>
					<td>작품명</td>
					<td>대표작</td>
					<td>작품소개</td>
				</tr>
				
			
			<!-- 시작 시간 순서대로 랭킹리스트 -->
				<tr>
					<td>${artistListByStartDay.artist_name}</td>
					<td align="left"><a href="/board/content?prod_num=${artistListByStartDay.artist_introd}">${artistListByStartDay.prod_name}</a></td>
					<td><img src="<spring:url value='${artistListByStartDay.prod_file}'/>" width="100" height="100" /></td> <%-- 업로드 파일불러오는거 추가해야함! --%>
					<td><img src="<spring:url value='${artistListByStartDay.prod_file}'/>" width="100" height="100" /></td> <%-- 업로드 파일불러오는거 추가해야함! --%>
					<td>${artistListByStartDay.prod_descr}</td>
				</tr>	
			</c:forEach>
		</table>
	</div>	
		
		
		
	
	
	<!-- 작품별 아티스트, 좋아요 가져오기 
	<table>
	<h2>원하는 작가와 좋아요 불러오기</h2>
	<td>원하는 작품 번호 입력<input type=number name=prod_no /></td>
	<td><input type=submit name="작품검색" /></td>
	<tr>
		<td>작품 이름과 좋아요 수</td>
		<td>좋아요 수</td>
	</tr>
	<tr>
		<td>${artist_name}</td>
		<td>${likesPerArtist}</td>
	</tr>
	</table>
	-->
	
	
	<!-- 전체 아티스트, 좋아요 가져오기 
	<table>
	<h2>전체 작품 검색</h2>
	<tr>
		<td>작품 이름과 좋아요 수</td>
	</tr>
	<tr>
		<td>${likeList}</td>
	</tr>
	</table>
	-->
	



	<table>
		<!-- 
	<h2>좋아요 순서대로 리스트</h2>
	
	<table>
	
		<tr>
			<td>작가명</td>
			<td>작가이미지</td>
			<td>작품명</td>
			<td>대표작</td>
			<td>작품소개</td>
		</tr>
	
			<!-- 좋아요 순서대로 랭킹리스트 -->
	<!-- 
		<c:forEach var="listByLikes" items="${listByLikes}">
			<tr>
				<td>${listByLikes.prod_artist}</td>
				<td>${listByLikes.prod_artist}</td>
				<td align="left"><a href="/board/content?prod_num=${listByLikes.prod_no}">${listByLikes.prod_name}</a></td>
				<td>${listByLikes.prod_file}</td> <%-- 업로드 파일불러오는거 추가해야함! --%>
				<td>${listByLikes.prod_descr}</td>
			</tr>	
		</c:forEach>
	-->
	</table>


</body>
</html>