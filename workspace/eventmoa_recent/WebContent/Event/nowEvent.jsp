<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>이벤트 모아 nowEvent</title>
		<meta charset="utf-8" />
		<link rel="stylesheet" href="${pagetext.request.contextPath}/assets/css/event.css">
	</head>
	<body class="is-preload">

		<!-- Header -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>

		<!-- Main -->
			<div id="main">

		<!--  Logo -->
		<span class="logo"></span>
		<p></p>
	<section id="" class="wrapper special">
		<div class="pmobi_glist">
			<div class="detailnfo,showstep1">
				<div class= ""> 
		 			<div class="content">
			<ul>			 
			  <li>
			 <a href="#">
			 <img src="${pageContext.request.contextPath}/images/ad/ad4.jpg" onerror="noimage(this)">
			 <dl>
			 	<dt id="title">소개글</dt>
			 	<dd class="#">맛집</dd>
			 </dl>
			  <dl>
			 	<dt id="title" class="glist_dt_T2">지역</dt>
			 	<dd class="#">경기</dd>
			 </dl>
			 </a> 
			 </li>
			   <li>
			 <a href="#">
			 <img src="${pageContext.request.contextPath}/images/ad/ad4.jpg" onerror="noimage(this)">
			 <dl>
			 	<dt id="title">소개글</dt>
			 	<dd class="#">맛집</dd>
			 </dl>
			  <dl>
			 	<dt id="title" class="glist_dt_T2">지역</dt>
			 	<dd class="#">경기</dd>
			 </dl>
			 </a> 
			 </li>
			   <li>
			 <a href="#">
			 <img src="${pageContext.request.contextPath}/images/ad/ad4.jpg" onerror="noimage(this)">
			 <dl>
			 	<dt id="title">소개글</dt>
			 	<dd class="#">맛집</dd>
			 </dl>
			  <dl>
			 	<dt id="title" class="glist_dt_T2">지역</dt>
			 	<dd class="#">경기</dd>
			 </dl>
			 </a> 
			 </li>
			   <li>
			 <a href="#">
			 <img src="${pageContext.request.contextPath}/images/ad/ad4.jpg" onerror="noimage(this)">
			 <dl>
			 	<dt id="title">소개글</dt>
			 	<dd class="#">맛집</dd>
			 </dl>
			  <dl>
			 	<dt id="title" class="glist_dt_T2">지역</dt>
			 	<dd class="#">경기</dd>
			 </dl>
			 </a> 
			 </li>
			   <li>
			 <a href="#">
			 <img src="${pageContext.request.contextPath}/images/ad/ad4.jpg" onerror="noimage(this)">
			 <dl>
			 	<dt id="title">소개글</dt>
			 	<dd class="#">맛집</dd>
			 </dl>
			  <dl>
			 	<dt id="title" class="glist_dt_T2">지역</dt>
			 	<dd class="#">경기</dd>
			 </dl>
			 </a> 
			 </li>
			   <li>
			 <a href="#">
			 <img src="${pageContext.request.contextPath}/images/ad/ad4.jpg" onerror="noimage(this)">
			 <dl>
			 	<dt id="title">소개글</dt>
			 	<dd class="#">맛집</dd>
			 </dl>
			  <dl>
			 	<dt id="title" class="glist_dt_T2">지역</dt>
			 	<dd class="#">경기</dd>
			 </dl>
			 </a> 
			 </li>
			   <li>
			 <a href="#">
			 <img src="${pageContext.request.contextPath}/images/ad/ad4.jpg" onerror="noimage(this)">
			 <dl>
			 	<dt id="title">소개글</dt>
			 	<dd class="#">맛집</dd>
			 </dl>
			  <dl>
			 	<dt id="title" class="glist_dt_T2">지역</dt>
			 	<dd class="#">경기</dd>
			 </dl>
			 </a> 
			 </li>
			   <li>
			 <a href="#">
			 <img src="${pageContext.request.contextPath}/images/ad/ad4.jpg" onerror="noimage(this)">
			 <dl>
			 	<dt id="title">소개글</dt>
			 	<dd class="#">맛집</dd>
			 </dl>
			  <dl>
			 	<dt id="title" class="glist_dt_T2">지역</dt>
			 	<dd class="#">경기</dd>
			 </dl>
			 </a> 
			 </li>  <li>
			 <a href="#">
			 <img src="${pageContext.request.contextPath}/images/ad/ad4.jpg" onerror="noimage(this)">
			 <dl>
			 	<dt id="title">소개글</dt>
			 	<dd class="#">맛집</dd>
			 </dl>
			  <dl>
			 	<dt id="title" class="glist_dt_T2">지역</dt>
			 	<dd class="#">경기</dd>
			 </dl>
			 </a> 
			 </li>
			</ul>
					</div>
				</div>
			</div>
		</div>
		<a href="#" class="btn_open">더보기</a>
		<a href="#" class="btn_close hide">감추기</a>
</section>
</div>
	<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>
	</body>
	<script>
	document.addEventListener('DOMContentLoaded', function(){ //DOM 생성 후 이벤트 리스너 등록
	    //더보기 버튼 이벤트 리스너
	    document.querySelector('.btn_open').addEventListener('click', function(e){
	        
	        let classList = document.querySelector('.detailnfo').classList; // 더보기 프레임의 클래스 정보 얻기
	        let contentHeight = document.querySelector('.detailnfo > .content').offsetHeight; //컨텐츠 높이 얻기

	        // 2단계이면 전체보기로
	        if(classList.contains('showstep2')){
	            classList.remove('showstep2');
	        }
	        // 1단계이면 2단계로
	        if(classList.contains('showstep1')){
	            classList.remove('showstep1');
	            if(contentHeight > 600){
	                classList.add('showstep2');
	            }else{
	                document.querySelector('.btn_open').classList.add('hide');
	            }
	        }
	        //전체보기시 더보기 버튼 감추기 & 감추기 버튼 표시
	        if(!classList.contains('showstep1') && !classList.contains('showstep2')){
	            e.target.classList.add('hide');
	            document.querySelector('.btn_close').classList.remove('hide');
	            
	        }
	        
	    });
	});
	
	// 감추기 버튼 이벤트 리스너
	document.querySelector('.btn_close').addEventListener('click', function(e){
	    e.target.classList.add('hide');
	    document.querySelector('.btn_open').classList.remove('hide'); // 더보기 버튼 감춤
	    document.querySelector('.detailnfo').classList.add('showstep1'); // 초기 감춤 상태로 복귀
	});
	
	//컨텐츠 로딩 완료 후 높이 기준으로 클래스 재처리
	
	window.addEventListener('load', function(){
	    let contentHeight = document.querySelector('.detailnfo > .content').offsetHeight; //컨텐츠 높이 얻기
	    if(contentHeight <= 300){
	        document.querySelector('.detailnfo').classList.remove('showstep1'); // 초기값보다 작으면 전체 컨텐츠 표시
	        document.querySelector('.btn_open').classList.add('hide'); // 버튼 감춤
	    }
	});
	</script>
	
</html>