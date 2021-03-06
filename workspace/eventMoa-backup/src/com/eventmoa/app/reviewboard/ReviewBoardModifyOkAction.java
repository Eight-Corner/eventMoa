package com.eventmoa.app.reviewboard;

import java.io.File;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.freeboard.vo.FreeFilesVO;
import com.eventmoa.app.reviewboard.dao.ReviewBoardDAO;
import com.eventmoa.app.reviewboard.dao.ReviewFilesDAO;
import com.eventmoa.app.reviewboard.vo.ReviewBoardVO;
import com.eventmoa.app.reviewboard.vo.ReviewFilesVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ReviewBoardModifyOkAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		
		ReviewBoardDAO r_dao = new ReviewBoardDAO();
		ReviewFilesDAO f_dao = new ReviewFilesDAO();
		ReviewFilesVO rf_vo = new ReviewFilesVO();
		ActionForward forward = null;
		
		MultipartRequest multi = null;
		
		String uploadFolder = "/app/reviewFilesUpload";
		ServletContext context= req.getSession().getServletContext();
		String realPath= context.getRealPath(uploadFolder);
		
		int fileSize = 1024 * 1024 * 50; // 10M
		
		try {
			ReviewBoardVO r_vo = new ReviewBoardVO();
			multi = new MultipartRequest(req, realPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
			int page = Integer.parseInt(multi.getParameter("page"));
			int board_Num = Integer.parseInt(multi.getParameter("board_Num"));
			
			
			f_dao.deleteFile(board_Num);
			f_dao.insertFiles(board_Num, multi);
			r_vo.setBoard_Num(board_Num);
			r_vo.setBoard_Title(multi.getParameter("board_Title"));
			r_vo.setBoard_Content(multi.getParameter("board_Content"));
			rf_vo.setFile_Name(multi.getFilesystemName("input_imgs_0"));
			
			r_dao.updateBoard(r_vo);
			
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/reviewboard/ReviewBoardView.rb?board_Num=" + r_vo.getBoard_Num() + "&page=" + page);
		} catch (Exception e) {
			PrintWriter out = resp.getWriter();
			resp.setContentType("text/html;charset=UTF-8");
			out.println("<script>");
			out.println("alert('????????? ?????? ??????. ?????? ??????????????????.');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			return null;
		}
		
		
		
		return forward;
	}
}
