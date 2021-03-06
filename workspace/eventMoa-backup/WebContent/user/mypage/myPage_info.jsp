<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("UTF-8"); %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
   <html>
   <head>
      <title>회원가입 | 이벤트 모아(Event Moa)</title>
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
      <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/title-icon.png">
      
      <!-- 회원가입 css -->
      <style>
      .field-icon {
           float: right;
           margin-right: 15px;
           margin-top: -25px;
           position: relative;
           z-index: 2;
           }
           
      p { position:relative; width:100%; height:50px; } /* 기본세팅 */
      p input { box-sizing:border-box; padding:20px 0 0; width:100%; height:100%; border:0 none; color:#595f63; outline:none; }
      p label { position:absolute; left:3%; bottom:10%; width:100%; height:100%; text-align:left; pointer-events:none; }
      p label span { position:absolute; left:0; bottom:5px; transition:all .3s ease; }
      p input:focus + label span, 
      p input:valid + label span { transform:translateY(-150%); font-size:14px; color:#5fa8d3; }  
      /* input에 글을 입력하고 포커스가 지나간 상태에서 제어하려면 valid 선택자를 써야한다. */
      /* 포커스 될 때 label span(name)이 위로 올라감 */
      p input:focus + label::after,
      p input:valid + label::after { width:100%; transform:translateX(0); }
      </style>
      <!-- signup_terms 약관 동의 css  -->
      <style>
         #selectAllSmall{
            display:none;
         }
         @media (min-width:481px){
            #terms1{
               display: none;
            }
         }
         @media (max-width:480px){
            textarea#termsServiceContent{
               display:none;
            }
            textarea#termsPrivacyContent{
               display:none;
            }
            div#termsDiv{
               width:100% !important;
            }
            div#btnDiv{
               width:100%;
               padding-left:0;
            }
            #selectAllSmall{
               display:inline;
            }
            #selectAll{
               display:none;
            }
            
         
         }
         .cate{
         letter-spacing: .00625em;
          font-family: Roboto,Arial,sans-serif;
          font-size: 1rem;
          font-weight: 400;
          line-height: 1.5rem;
          hyphens: auto;
          word-break: break-word;
          word-wrap: break-word;
          color: #202124;
          margin: 0;
          padding: 0;
          width: 100%;
         }
         
         .arrow {
         font-family: 'Jua';
          hyphens: auto;
          word-break: break-word;
          word-wrap: break-word;
          color: #5f6368;
          font-size: 20px;
          font-weight: 400;
         }
      </style>

   </head>
   <body class="is-preload">
   <c:set var="user_Name" value="${user_Name}"/>
   <c:set var="user_Email" value="${user_Email}"/>
   <c:set var="user_Zipcode" value="${user_Zipcode}"/>
   <c:set var="user_Address" value="${user_Address}"/>
   <c:set var="user_AddressDETAIL" value="${user_AddressDETAIL}"/>
   <c:set var="user_AddressEtc" value="${user_AddressEtc}"/>
      
      <c:if test="${session_id eq null}">
         <script>
            alert("로그인 후 이용해주세요");
            location.replace("${pageContext.request.contextPath}/main.us");
         </script>
      </c:if>
      
   <!-- sideBar -->
<jsp:include page="${pageContext.request.contextPath}/assets/public/sideBar.jsp"></jsp:include>

      <!-- Header -->
         <jsp:include page="${pageContext.request.contextPath}/assets/public/header.jsp"></jsp:include>

      <!-- Main -->
         <div id="main">

               <!-- Content -->
               <h1 style="color: #444; font-size: 20px; font-weight: bold; letter-spacing: -2px; text-align: center; padding-top: 10%;">개인 정보</h1>
         <div class="contents" id="signupContents" style="padding: 12px 20px; width: 80%; margin: 0 auto;">
            <form name="joinForm" action="${pageContext.request.contextPath}/user/UserJoinOk.us" method="post" style="padding-bottom: 0;">
            <div class="signup_message" id="signup_message">
               <br>
            </div>
				<a href="#" style="display: flex; cursor: default;">
					<div class="col-12" style="width: 35%; color: #202124;">아이디</div><div class="cate">${session_id}</div>
				</a>
				<hr style="margin-inline: auto;">
                  <a href="${pageContext.request.contextPath}/user/mypage/UserModifyName.us" style="display: flex;">
                     <div class="col-12" style="width: 35%; color: #202124;">이름</div><div class="cate">${user_Name}</div><span class="arrow" aria-hidden="true">></span>
                  </a>
                  <hr style="margin-inline: auto;">
                  <a href="${pageContext.request.contextPath}/user/mypage/UserModifyEmail.us" style="display: flex;">
                     <div class="col-12" style="width: 35%; color: #202124;">이메일</div><div class="cate">${user_Email}</div><span class="arrow" aria-hidden="true">></span>
                  </a>
                  <hr style="margin-inline: auto;">
                  <a href="${pageContext.request.contextPath}/user/mypage/UserModifyAddress.us" style="display: flex;">
                     <div class="col-12" style="width: 35%; color: #202124;">주소</div><div class="cate">
                     ${user_Zipcode} / ${user_Address} ${user_AddressDETAIL} ${user_AddressEtc}
                     </div><span class="arrow" aria-hidden="true">></span>
                  </a>
                  <hr style="margin-inline: auto;">
                  <a href="${pageContext.request.contextPath}/user/mypage/myPage_password.jsp" style="display: flex;">
                     <div class="col-12" style="width: 35%; color: #202124;">비밀번호</div><div class="cate">••••••••</div><span class="arrow" aria-hidden="true">></span>
                  </a>   
                  
               
         </form>
      </div>
                  <br>
                  <br>
   
   </div>

   <!-- Footer -->
         <jsp:include page="${pageContext.request.contextPath}/assets/public/footer.jsp"></jsp:include>

      <!-- Scripts -->
         <script src="${pageContext.request.contextPath}/assets/js/visiblePw.js"></script>
         <script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
         <script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>

         <script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
         <script>var contextPath = "${pageContext.request.contextPath}";</script>
      
   </body>
</html>