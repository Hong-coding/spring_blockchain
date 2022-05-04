<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set time page</title>
</head>
<body>
<h2> 관리자용 이벤트 옥션 등록 페이지 </h2>
<form name="setT" method="post" action="/adminSetT">
	<h3> 옥션 오픈 시간 입력</h3>
	<div>
		<input name="openTime" type="datetime-local"/>
	</div>
	<h3> 옥션 종료 시간 입력</h3>
	<div>
		<input name="closeTime" type="datetime-local"/>
	</div>
	<br />
	<h3> 경매 상품 등록 </h3>
	<div>
		<input name="eventItem" type="file"/>
	</div>
	<h3> 시작가 등록 </h3>
	<div>
		<input name="startPrice" type="text" onkeypress="checkNum()"/>원(KRW)
	</div>
	<!-- 숫자만 입력하게 하는 스크립 -->
   <script>
       function checkNum(e) {
           var keyVal = event.keyCode;
       
           if(((keyVal >= 48) && (keyVal <= 57))){
               return true;
           }
           else{
                alert("가격은 숫자만 입력가능합니다");
               return false;
          }
      }
   </script>
   <br />
	<input type='submit' value='이벤트 등록'> 
</form>
</body>
</html>