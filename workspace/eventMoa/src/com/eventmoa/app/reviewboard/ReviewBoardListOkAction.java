package com.eventmoa.app.reviewboard;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.reviewboard.dao.ReviewBoardDAO;

public class ReviewBoardListOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ReviewBoardDAO r_dao = new ReviewBoardDAO();
		ActionForward forward =new ActionForward();
		
		String temp = req.getParameter("page");
		String category = req.getParameter("category");
		if(temp == null ) {temp="1";};
		if(category == null ) {category="recent";}; // dafault
		
		
		int page = 1;
		
		try {
			page = Integer.parseInt(temp);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		
		int boardSize = 10;
		int pageSize = 10;
				
		int endRow = page * boardSize;
				
		int startRow = endRow - (boardSize - 1);
		
		int startPage = ((page - 1) / pageSize) * pageSize  + 1;
		int endPage = startPage + (pageSize - 1);
		
		int totalCnt = r_dao.getBoardCnt();
		
		int realEndPage = (totalCnt - 1) / pageSize + 1;
		
		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		//requestScope
		req.setAttribute("totalCnt", totalCnt);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("nowPage", page);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("category", category);
		req.setAttribute("boardList", r_dao.getBoardList(startRow, endRow, category));
		
		forward.setRedirect(false);
		forward.setPath("/community/reviewList.jsp");
		
		return forward;
	}
}
