package com.eventmoa.app.eventboard;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.eventmoa.action.Action;
import com.eventmoa.action.ActionForward;
import com.eventmoa.app.eventboard.dao.EventDAO;
import com.eventmoa.app.eventboard.dao.EventFIlesDAO;
import com.eventmoa.app.eventboard.vo.EventBoardVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class EventBoardWriterOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception { 
		
		EventBoardVO ev_vo = new EventBoardVO();
		EventDAO ev_dao = new EventDAO();
		EventFIlesDAO evf_dao = new EventFIlesDAO();
		ActionForward forward = null;
		
		// 업로드
		String uploadFolder = "/app/eventFilesUpload";
		ServletContext context= req.getSession().getServletContext();
		String realPath= context.getRealPath(uploadFolder);
		
		int fileSize = 1024 * 1024 * 50; // 10M
		
		MultipartRequest multi = null;
		
		
		try {
			multi = new MultipartRequest(req, realPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		ev_vo.setBoard_Title(multi.getParameter("titleName"));
		ev_vo.setBoard_Content(multi.getParameter("content"));
		ev_vo.setBoard_Id(multi.getParameter("board_Id"));
		ev_vo.setBoard_Zipcode(multi.getParameter("zipcode"));
		ev_vo.setBoard_Address(multi.getParameter("address"));
		ev_vo.setBoard_Address_Detail(multi.getParameter("address_detail"));
		ev_vo.setBoard_Address_etc(multi.getParameter("address_etc"));
		ev_vo.setEVT_START_DT(multi.getParameter("datepicker1"));
		ev_vo.setEVT_END_DT(multi.getParameter("datepicker2"));
		ev_vo.setFile_name(multi.getFilesystemName("input_imgs"));
		
		if(ev_dao.insertBoard(ev_vo)) {
			if(evf_dao.insertFiles(ev_dao.getBoardNum(), multi)) {
				
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath(req.getContextPath() + "/eventboard/EventBoardList.ev");
			}
			
		}
		return forward;

	}

}
