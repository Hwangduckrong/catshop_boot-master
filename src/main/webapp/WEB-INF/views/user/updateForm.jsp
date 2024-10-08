<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보수정</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/hdrupdate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footer.css">
</head>
<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
<body>
    <div id="wrap">
    
    <div id="container" class="clearfix">
     <!-- 왼쪽 사이드바 -->
        <div class="sidebar">
             <h2>MYPAGE</h2>
                <a href="#">주문 목록</a>
                <a href="#">회원 정보</a>
        </div>

 			<div class="content">
      <h1>회원정보수정</h1>

         <form action ="${pageContext.request.contextPath}/user/update" method="post">
         <div id="joinFormBox">
            <label for="input-id">아이디</label>
            <input type="text" id="id" name="id" value="${UpdateUser.id}" readonly>

            <label for="input-password">현 비밀번호</label>
            <input type="password" id="password" placeholder="현재 비밀번호를 입력하세요" required>
            
            <label for="password">바뀔 비밀번호</label>
            <input type="password" id="password" placeholder="바뀔 비밀번호를 입력하세요" required>

            <label for="input-name">성함</label>
            <input type="text" id="name" name="name" value="${UpdateUser.name}" readonly>

            <label for="input-hp">전화번호</label>
            <input type="text" id="hp" name="hp" placeholder="전화번호를 입력하세요" required>

            <label for="address">주소</label>
            <input type="text" id="address" placeholder="주소를 입력하세요" required>

            <br><!--입력버튼 아래로 하려고-->
            <button type="submit">입력 완료</button>
        </div><!-- joinformbox -->
        </form>
     </div><!--content -->
   </div><!-- container -->
 </div><!-- wrap -->
<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
</body>
</html>