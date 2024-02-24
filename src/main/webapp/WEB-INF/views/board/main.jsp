<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
      
      <title>테스트를 위한 페이지입니다</title>
       <script  src="/resources/include/js/jquery-3.7.1.min.js"></script>
      <link rel="shortcut icon" href="/resources/image/icon.png" />
      <link rel="apple-touch-icon" href="resources/image/icon.png" />
      

      <style>
      	td{ border : 1px solid;}
      
      </style>
      
      <script>
      $(function(){
      	$("#writeBtn").click(function(){
      		alert("글쓰는 화면으로 갑시다.");
      		location.href="/writeBoard"; //mapping 주소
      	
      	});
      	
      });
      </script>
   </head>
   
   <body>
   	<h2>결과가 잘 나오는지 테스트</h2>
   	
   		<table>
		   			<tr>
		   				<td>제목</td>
		   				<td>내용</td>
		   				<td>작성자</td>
		   				<td>작성일</td>
		   			</tr>
   			
		   	<c:forEach var="result" items="${list}">
		   			<tr>
			   			<td>${result.bTitle}</td>
			   			<td>${result.bContent}</td>
			   			<td>${result.bName}</td>
			   			<td>${result.bDate}</td>
		   			</tr>
		   		   	
		   	</c:forEach>
   		</table>
	<input type="button" id="writeBtn" value="글쓰기"/>
   	
   </body>
</html>