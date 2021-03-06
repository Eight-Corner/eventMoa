<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
페이지 프레임 입니다.
편하게 복사해서 작업하세요.
-->
<html>
	<head>
		<title>인증 후기 | 이벤트 모아 (Event Moa)</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<meta name="author" content="corner3499">
		<!-- title Icon -->
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
	</head>
	
	<body class="is-preload">
	<!-- sideBar -->
<jsp:include page="${pageContext.request.contextPath}/assets/public/sideBar.jsp"></jsp:include>

		<!-- Header -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>
	<p></p>
		<!-- Main -->
			<div id="main">
			
		<!-- Logo -->
		<jsp:include page="${pageContext.request.contextPath}/assets/public/logo.jsp"></jsp:include>
		
		
		<!-- FreeTalk -->
		<section id="banner">
			<article class="column col4">
				<h2 class="col_tit" style="text-align: left;">인증 후기</h2>
				<p class="col_desc"> </p>
		
							<form method="post" action="#" class="combined" style="margin-bottom: 0;">
			         			<select name="category" class="button primary icon solid fa-search" id="category" 
			         			style="font-size: 10px; width: 10%; padding: 0;">
				         				<option value="recent">등록일순</option>
				         				<option value="view">조회순</option>
				         				<option value="likes">추천순</option>
				         			</select>
         						<div style="float:right; font-size: 11px;">
				         			<a href="javascript:;" class="button-dark tooltip">
										<span class="fa fa-adjust">	반전모드</span>
									</a>
								</div>
		         			</form>
							<div class="table-wrapper">
								<table class="alt">
									<thead>
										<tr>
											<th>추천</th>
											<th style="text-align: center;">제목</th>
											<th>닉네임</th>
											<th>조회수</th>
											<th>날짜</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>0</td>
											<td>안녕하세요</td>
											<td>corner </td>
											<td>1</td>
											<td>17:43</td>
										</tr>
										<tr>
											<td>0</td>
											<td>안녕하세요</td>
											<td>corner </td>
											<td>1</td>
											<td>03-26</td>
										</tr>
										<tr>
											<td>0</td>
											<td>안녕하세요</td>
											<td>corner </td>
											<td>1</td>
											<td>03-26</td>
										</tr>
										<tr>
											<td>0</td>
											<td>안녕하세요</td>
											<td>corner </td>
											<td>1</td>
											<td>03-26</td>
										</tr>
										<tr>
											<td>0</td>
											<td>안녕하세요</td>
											<td>corner </td>
											<td>1</td>
											<td>03-26</td>
										</tr>
									</tbody>
								</table>
								
								<div id="two" style="text-align: center; vertical-align: middle; ">
		         					  <div class="button primary small" style="width: 15%;">
					         				<a href="${pageContext.request.contextPath}/">이전</a>
					         				</div>
		         					  <div class="button primary small" style="width: auto;">
						         					<!-- 페이지 수 -->&nbsp;
						         					<a href="${pageContext.request.contextPath}/">&nbsp;</a>
						               	</div>
			         					  <div class="button primary small" style="width: 15%;">
					         				<a href="${pageContext.request.contextPath}/">다음</a>
						               	</div>
					         		<!-- 로그인 했을 경우에만 글쓰기가 떠야함 -->
						               <div class="button primary small" style="float: right; width: 15%;">
						               		<a href="${pageContext.request.contextPath}/">글쓰기✍</a>
						               	</div>
								</div>
								
						         
							</div>
							
							</article>
						</section>

			</div> <!-- div id="main" end -->

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>
			
	</body>
</html>