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
		
		   resp.setContentType("text/html;charset=utf-8");
		   System.out.println("c 들어옴1");
		if(u_dao.login(id, pw)) {
			System.out.println("c 들어옴2");
			session.setAttribute("user_Id", id);
			forward.setRedirect(true);
			forward.setPath(req.getContextPath()+"/main.us?type=login");
			
		}else {
			System.out.println("로그인 실패");
			forward.setRedirect(false);
			forward.setPath("/user/userLogin.us?type=false");
		}
		return forward;
	}

	
	 
	
	
	
	
	
}