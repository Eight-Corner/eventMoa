package com.eventmoa.app.reviewboard;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.reviewboard.dao.ReviewBoardDAO;
import com.eventmoa.app.reviewboard.dao.ReviewFilesDAO;
import com.eventmoa.app.reviewboard.vo.ReviewFilesVO;

public class ReviewBoardDeleteOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ReviewBoardDAO r_dao = new ReviewBoardDAO();
		ReviewFilesDAO f_dao = new ReviewFilesDAO();
		ActionForward forward = new ActionForward();
		
		String uploadFolder = "/app/reviewFilesUpload";
		ServletContext context= req.getSession().getServletContext();
		String realPath= context.getRealPath(uploadFolder);
		int board_Num = Integer.parseInt(req.getParameter("board_Num"));
		int page = Integer.parseInt(req.getParameter("page"));
		
			
		f_dao.deleteFile(board_Num);
		r_dao.deleteBoard(board_Num);
		
		forward.setRedirect(false);
		forward.setPath(req.getContextPath() + "/reviewboard/ReviewBoardList.rb?category=recent");
		
		return forward;
	}
}
