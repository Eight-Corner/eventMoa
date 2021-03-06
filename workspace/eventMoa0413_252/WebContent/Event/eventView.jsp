<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
 
-->
<html>
	<head>
		<title>이벤트 모아 (Event Moa)</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
		<meta name="author" content="corner3499">
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/map.css">
		<style>
		.star_rating {font-size:0; letter-spacing:-4px; margin-right:5%;}
		.star_rating a {
		    font-size:22px;
		    letter-spacing:0;
		    display:inline-block;
		    margin-left:5px;
		    color:#ccc;
		    text-decoration:none;
		}
		.star_rating a:first-child {margin-left:0;}
		.star_rating a.on {color:#777;}
		.intro{
			display:inline-block;
			margin-right:3%;
		}
		#writer{
			float:right;
		}
		.date{
			margin-left:2%;
		}
		.content{
			display:block;
		}
		.intro h4 {
			font-size: 25px; color: black; padding-bottom: 5px; font-weight:600;
		}
		.intro span {
			font-size: 20px; color: #2f7fa6; padding-bottom: 5px; font-weight:600;
			color: deeppink;
		}
		.col_desc{
			margin-top: 3%;
		}
		</style>
	</head>
	
	<body class="is-preload">
		<!-- sideBar -->
<jsp:include page="${pageContext.request.contextPath}/assets/public/sideBar.jsp"></jsp:include>
		<!-- Header -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>

		<!-- Main -->
			<div id="main">

				<!-- Header -->
				<jsp:include page="${pageContext.request.contextPath}/assets/public/logo.jsp"></jsp:include>
				
						<div class="login_message">
							<h1>${titleName}</h1>
							<br>
						</div>
					<!-- 이미지 슬라이드 -->
					<div class="slider" style="width:70%; margin:0 auto;">
						<div>
							<figure>
								<!-- 파일 네임  -->
								<img src="${pageContext.request.contextPath}/app/eventFilesUpload/이미지이름받아오기" alt="이미지1">
								<figcaption><em> SNS • 배너 광고 디자인 </em><span> #페이스북 #인스타그램 </span></figcaption>
							</figure>
						</div>
						<div>
							<figure>
								<img src="${pageContext.request.contextPath}/app/eventFilesUpload/ad2.jpg" alt="이미지2">
								<figcaption><em> 카울리 인사이트 </em><span> 광고 소재 제작 Tip</span></figcaption>
							</figure>
						</div>
						<div>
							<figure>
								<img src="${pageContext.request.contextPath}/app/eventFilesUpload/ad3.jpg" alt="이미지3">
								<figcaption><em> CROLO </em><span>  배너 디자인 이제 AI에게 맡기세요. </span></figcaption>
							</figure>
						</div>
						<div>
							<figure>
								<img src="${pageContext.request.contextPath}/app/eventFilesUpload/ad4.jpg" alt="이미지4">
								<figcaption><em> Banner Template </em><span> Plan Your ...</span></figcaption>
							</figure>
						</div>
					</div>
					<p style="text-align:center">
						기름에 튀기지 않고 오븐에 구운 닭!<br><span style="color:red">오늘만 반 값!</span> 
					</p>
				<div style="border-bottom: 2px solid #dbdbdb; text-align:center; padding-bottom:5%">
					<div class="intro">
						<article class="column col6" style="display:inline">
							<span style="font-size:55px; display:block;">3.5</span>
							<h4 class="intro-h4" style="display:inline">
								평균 평점
							</h4>
						</article>
					</div>
					<div class="intro">
						<article class="column col6" style="display:inline">
							<span style="font-size:25px; display:block;">1588-8282</span>
							<h4 class="intro-h4" style="display:inline">
								연락처
							</h4>
						</article>
					</div>
					<div class="intro">
						<article class="column col6" style="display:inline">
							<span style="font-size:15px; display:block;">서울시 강남구 역삼동</span>
							<h4 class="intro-h4" style="display:inline">
								주소
							</h4>
						</article>
					</div>
				</div>
							<!-- KAKAO MAP -->
				<article class="column col4">
					<h2 class="col_tit" style="text-align: center;"> MAP</h2>
					<div id="map" style="border-radius: 10px;"></div>
				</article>
					 
					 <br>
				<section style="padding:3%;">
					<form method="post" action="#">
						<div class="col-12">
							<p class="star_rating" style="display:inline">
						    <a href="#" class="on">★</a>
						    <a href="#" class="on">★</a>
						    <a href="#" class="on">★</a>
						    <a href="#" class="on">★</a>
						    <a href="#" class="on">★</a>
						</p>
							<textarea name="reply" id="reply" rows="4" style="resize:none;"></textarea>
							<a style="float:right; font-size:0.9rem;">등록</a>
						</div>
					</form>
				</section>
				<article class="column col6">
					<span style="font-size:35px; display:block">5.0</span>
					<p class="star_rating" style="display:inline">
					    <a href="#" class="on">★</a>
					    <a href="#" class="on">★</a>
					    <a href="#" class="on">★</a>
					    <a href="#" class="on">★</a>
					    <a href="#" class="on">★</a>
					</p>
					<span class="content">좋아요! 맛있어요!</span>
					<span id="writer" class="date">03.31</span>
					<span id="writer">작성자</span>
					<p class="col_desc"><span></span></p>
				</article>
				<article class="column col6">
					<span style="font-size:35px; display:block">4.0</span>
					<p class="star_rating" style="display:inline">
					    <a href="#" class="on">★</a>
					    <a href="#" class="on">★</a>
					    <a href="#" class="on">★</a>
					    <a href="#" class="on">★</a>
					    <a href="#">★</a>
					</p>
					<span class="content">좋아요! 맛있어요!</span>
					<span id="writer" class="date">03.31</span>
					<span id="writer">작성자</span>
					<p class="col_desc"><span></span></p>
				</article>
				<article class="column col6">
					<span style="font-size:35px; display:block">3.0</span>
					<p class="star_rating" style="display:inline">
					    <a href="#" class="on">★</a>
					    <a href="#" class="on">★</a>
					    <a href="#" class="on">★</a>
					    <a href="#">★</a>
					    <a href="#">★</a>
					</p>
					<span class="content">좋아요! 맛있어요!</span>
					<span id="writer" class="date">03.31</span>
					<span id="writer">작성자</span>
					<p class="col_desc"><span></span></p>
				</article>
				<article class="column col6">
					<span style="font-size:35px; display:block">2.0</span>
					<p class="star_rating" style="display:inline">
					    <a href="#" class="on">★</a>
					    <a href="#" class="on">★</a>
					    <a href="#">★</a>
					    <a href="#">★</a>
					    <a href="#">★</a>
					</p>
					<span class="content">좋아요! 맛있어요!</span>
					<span id="writer" class="date">03.31</span>
					<span id="writer">작성자</span>
					<p class="col_desc"><span></span></p>
				</article>
			
			
			
			


			</div> <!-- div id="main" end -->

		<!-- Footer -->
			<jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>

		
			
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b014e09a77678170402c5f935f0a72af"></script>
<script>
	//평점
	$( ".star_rating a" ).click(function() {
	    $(this).parent().children("a").removeClass("on");
	    $(this).addClass("on").prevAll("a").addClass("on");
	    return false;
	});

   //이미지 슬라이더
   $(".slider").slick({
       dots: true,
       autoplay: true,
       autoplaySpeed: 3000,
       arrows: true,
       responsive: [
           {
               breakpoint: 768,
               settings: {
                   autoplay: false,
                   }
           }
       ]
   });
</script>
</body>
</html>