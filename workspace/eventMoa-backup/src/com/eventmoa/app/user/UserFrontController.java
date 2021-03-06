package com.eventmoa.app.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.ActionForward;
import com.eventmoa.app.user.mypage.PointChargeAction;
import com.eventmoa.app.user.mypage.PointReceiptAction;
import com.eventmoa.app.user.mypage.UserAddressModifyAction;
import com.eventmoa.app.user.mypage.UserDeleteAccountOkAction;
import com.eventmoa.app.user.mypage.UserEmailModifyAction;
import com.eventmoa.app.user.mypage.UserBoardListOkAction;
import com.eventmoa.app.user.mypage.UserBoardReplyListOkAction;
import com.eventmoa.app.user.mypage.UserNameModifyAction;
import com.eventmoa.app.user.mypage.UserPwModifyAction;

public class UserFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(req, resp);
	}

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		
		String login = req.getParameter("login");
		ActionForward forward = null;
		/* main 컨트롤러 */
		if(command.equals("/main.us")) {
			try {
				forward = new ActionForward();
				forward.setRedirect(false);
//				forward.setPath("/index.jsp" + (login != null ? "?login=1" : ""));
				forward.setPath("/index.jsp");
			} catch (Exception e) {;}
		}
		
		/* 회원가입 컨트롤러 */
		else if (command.equals("/user/UserJoinOk.us")) {
			try {
				forward = new UserJoinOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		} else if (command.equals("/user/UserJoin.us")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/user/signup.jsp");
		}
		/*	로그인 컨틀롤러 */
		else if (command.equals("/user/UserLoginOk.us")) {
			try {
				forward = new UserLoginOKAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		else if (command.equals("/user/UserLogin.us")) {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/user/login.jsp");
		}
		
		/* 로그아웃 부분 */
		else if (command.equals("/user/UserLogout.us")) {
			try {
				 forward = new UserLogoutAction().execute(req, resp);  
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		
		/* 이메일 인증 부분 */
		else if (command.equals("/user/verifyCheckEmail.us")) {
			try {
				forward = new UserVerifyCheckAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		else if (command.equals("/user/verifyEmail.us")) {
			try {
				 forward = new UserVerifyEmailAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		else if (command.equals("/user/verifyCheck.us")) {
			try {
				forward = new UserVerifyEmailCheckAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		
		/* 유효성 부분  */
		// 중복검사 아이디 / 이메일 
		else if (command.equals("/user/UserCheckIdOk.us")) {
			try {
				// 아이디 중복검사 
				 forward = new UserCheckIdOkAction().execute(req, resp); 
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		else if (command.equals("/user/UserCheckEmailOk.us")) {
			try {
				 forward = new UserCheckEmailOkAction().execute(req, resp); 
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		
		
		/* 아이디 비밀번호 찾기 부분 */
		else if (command.equals("/user/UserFindIdPw.us")) {
			try {
				
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath("/user/findIdPw.jsp");  
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		else if (command.equals("/user/UserFindIdOk.us")) {
			try {
				 forward = new UserFindIdOkAction().execute(req, resp);  
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		
		else if (command.equals("/user/UserFindPwOk.us")) {
			try {
				 forward = new UserFindPwOkAction().execute(req, resp);  
			} catch (Exception e) {
				System.out.println(e);
			}
		}

		/* 마이페이지 부분 컨트롤러 */
		else if (command.equals("/mypage/myPage.us")) {
			try {
				
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath("/user/mypage/myPage_list.jsp");  
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		else if (command.equals("/user/mypage/MyPageInfo.us")) {
			try {
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath("/user/mypage/myPage_info.jsp");
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		/* 정보수정 컨트롤러 */
		else if (command.equals("/user/mypage/UserModifyName.us")) {
			try {
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath("/user/mypage/myPage_name.jsp");  
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		else if (command.equals("/user/mypage/UserModifyNameOk.us")) {
			try {
				forward = new UserNameModifyAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		/* 이메일 작업 컨트롤러 */
		else if (command.equals("/user/mypage/UserModifyEmail.us")) {
			try {
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath("/user/mypage/myPage_email.jsp");
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		else if (command.equals("/user/modfiyEmailSend.us")) {
			try {
				forward = new UserModifyVerifyEmailAction().execute(req, resp);  
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		else if (command.equals("/user/mypage/UserModifyEmailOk.us")) {
			try {
				forward = new UserEmailModifyAction().execute(req, resp);  
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		
		/* 주소수정 */
		else if (command.equals("/user/mypage/UserModifyAddress.us")) {
			try {
				 forward = new ActionForward();
				 forward.setRedirect(false);
				 forward.setPath("/user/mypage/myPage_address.jsp");
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		else if (command.equals("/user/UserModifyAddressOk.us")) {
			try {
				 forward = new UserAddressModifyAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		/* 비밀번호 수정*/
		else if (command.equals("/user/mypage/UserModifyPw.us")) {
			try {
				 forward = new ActionForward();
				 forward.setRedirect(false);
				 forward.setPath("/user/mypage/myPage_password.jsp");
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		else if (command.equals("/user/UserModifyPwOk.us")) {
			try {
				 forward = new UserPwModifyAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		/* 회원 탈퇴*/
		else if (command.equals("/user/mypage/UserDeleteAccountOk.us")) {
			try {
				 forward = new ActionForward();
				 forward.setRedirect(false);
				 forward.setPath("/user/mypage/myPage_deleteAccount.jsp");
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		else if (command.equals("/user/UserDeleteAccountOk.us")) {
			try {
				 forward = new UserDeleteAccountOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		/* 내가 쓴 글*/
		else if (command.equals("/user/mypage/UserBoardListOk.us")) {
			try {
				 forward = new UserBoardListOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		/* 내가 쓴 댓글 */
		else if (command.equals("/user/mypage/UserBoardReplyListOk.us")) {
			try {
				forward = new UserBoardReplyListOkAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		/* 포인트 결제내역 */
		else if (command.equals("/user/mypage/pointReceipt.us")) {
			try {
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath("/user/mypage/pointReceipt.jsp");
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		else if (command.equals("/user/mypage/PointReceiptAction.us")) {
			try {
				forward = new PointReceiptAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		/* 포인트 충전 */
		else if (command.equals("/pointCharge.us")) {
			try {
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath("/user/mypage/pointCharge.jsp");
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		else if (command.equals("/PointChargeAction.us")) {
			try {
				forward = new PointChargeAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		
		/* 검색 페이지	*/
		else if (command.equals("/search/search.us")) {
			try {
				
				forward = new searchKeywordAction().execute(req, resp);
			} catch (Exception e) {e.printStackTrace();}
		}
		else if (command.equals("/search/searchEvent.us")) {
			try {
				forward = new EventBoardSearchViewAction().execute(req, resp);
			} catch (Exception e) {e.printStackTrace();}
		}
		/* 에러 응답없는 404 페이지 */
		else {
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/error/404.jsp");
		}
		
		if(forward != null ) {
			if(forward.isRedirect()) {
				resp.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = req.getRequestDispatcher(forward.getPath());
				dispatcher.forward(req, resp);
			}
		}
		
		
	}

}
