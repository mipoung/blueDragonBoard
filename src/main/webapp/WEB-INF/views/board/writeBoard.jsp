<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
   <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
      
      <title>글 작성하기</title>
     <script  src="/resources/include/js/jquery-3.7.1.min.js"></script>
     <script  src="/resources/include/js/common.js"></script>
      <link rel="shortcut icon" href="/resources/image/icon.png" />
      <link rel="apple-touch-icon" href="resources/image/icon.png" />
   </head>
   
   	<style>
   		table td{
   			border : 1px solid;
   		}
   		
   		.td2{
   			width : 500px;
   		}
   		
   		.content{
   			height : 250px;
   		}
   		
   		input[type="text"],
   		textarea {
   			width: 100%; /* Make it fill the entire width */
   			height : 100%;
   			box-sizing: border-box; /* Include padding and border in the element's total width and height */
   		}
   		
   	</style>
   	
   	<script>
   		$(function(){
   			$("#insertBtn").click(function(){
   				
   				//if(!chkData("b_title","제목을")) return;
   				//else if(!chkData("b_content","작성할 내용을")) return;
   				//else if(!chkData("b_name","작성자를")) return;
   				
   				alert("작동이요");
   				
   				$("#writeForm").attr({
   					"method" : "post",
   					"action" : "/boardInsert"
   				});
   				$("#writeForm").submit();
   				alert("저장됨");
   			});
   			
   			$("#cancelBtn").click(function(){
   				location.href="/index";
   			});
   			
   		});
   	</script>
   	
   <body>
   <form id="writeForm">
   	<table>
   		<thead>
   			<tr>
   				<td colspan="2">
   					<h3 style="text-align : center;">게시글 작성하기</h3>
   				</td>
   			</tr>
   		</thead>
   		
   		<tbody>
   			<tr>
				<td>글쓴이</td>
				<td class="td2">
					<input type="text" name="bName" id="b_name"/>
				</td>
			</tr>
			
			<tr>
				<td>내용</td>
				<td class="td2 content">
					<textarea rows="" cols="" name="bContent" id="b_content"></textarea>
				</td>
			</tr>
			
			<tr>
				<td>제목</td>
				<td class="td2">
					<input type="text" name="bTitle" id="b_title"/>
				</td>
			</tr>
			
			<tr>
				<td>첨부파일</td>
				<td class="td2"></td>
			</tr>
			
			<tr>
				<td>비밀번호</td>
				<td class="td2">
					<input type="password" name="bPwd" id="b_pwd"/>
				</td>
			</tr>	
   		</tbody>
   	</table>
   		<input type="button" id="insertBtn" value="등록하기"/>
   		<input type="button" id="cancelBtn" value="돌아가기"/>
   	</form>
   </body>
</html>