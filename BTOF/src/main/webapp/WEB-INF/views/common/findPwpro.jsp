<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/nav.jsp" %>
		<c:if test="${result ==0}">
				<script type="text/javascript">
					alert("아이디 혹은 전화번호가 일치하지 않습니다");
					history.go(-1);
				</script>
			</c:if>
	
		

</body>
</html>