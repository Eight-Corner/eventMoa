package com.eventmoa.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.reflection.SystemMetaObject;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.user.dao.UserDAO;

public class UserLoginOKAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		
		HttpSession  session =req.getSession();
		ActionForward forward =new ActionForward();
		
		UserDAO  u_dao = new UserDAO();
		
		String id =req.getParameter("user_Id");
		String pw =req.getParameter("user_pw");
		//로그인 성공실패
		if(u_dao.login(id, pw)) {
			session.setAttribute("session_id", id);
			forward.setRedirect(true);
			forward.setPath(req.getContextPath()+"/user/UserLogin.us");
			
		}else {
			System.out.println("로그인 실패");
			forward.setRedirect(false);
			forward.setPath("/user/userLogin.us?login=false");
		}
		return forward;
	}

	
	 
	
	
	
	
	
}