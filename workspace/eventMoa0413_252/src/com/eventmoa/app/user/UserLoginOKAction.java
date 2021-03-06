package com.eventmoa.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.user.dao.UserDAO;

public class UserLoginOKAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		
		HttpSession  session = req.getSession();
		ActionForward forward =new ActionForward();
		
		resp.setContentType("text/html;charset=utf-8");
		UserDAO  u_dao = new UserDAO();
		
		String id = req.getParameter("user_Id");
		String pw = req.getParameter("user_Pw");
		String name = u_dao.getUserName(id);
		String email = u_dao.getUserEmail(id);
		String zipcode = u_dao.getUserZipcode(id);
		String address = u_dao.getUserAddress(id);
		String etc = u_dao.getUserAddressEtc(id);
		String detail = u_dao.getUserAddressDETAIL(id);
		String currentPw = u_dao.getUserPw(id);
		
		if(u_dao.login(id, pw)) {
			session.setAttribute("login", "1");
			session.setAttribute("session_id", id);
			session.setAttribute("user_Name", name);
			session.setAttribute("user_Email", email);
			session.setAttribute("user_Zipcode", zipcode);
			session.setAttribute("user_Address", address);
			session.setAttribute("user_AddressEtc", etc);
			session.setAttribute("user_AddressDETAIL", detail);
			session.setAttribute("currentPw", currentPw);
			forward.setRedirect(true);
			forward.setPath(req.getContextPath()+"/main.us");
		}else {
			session.setAttribute("login", "0");
			forward.setRedirect(false);
			forward.setPath(req.getContextPath()+"/user/UserLogin.us?login=0");
		}
		
		return forward;
		
	}

	
	 
	
	
	
	
	
}
