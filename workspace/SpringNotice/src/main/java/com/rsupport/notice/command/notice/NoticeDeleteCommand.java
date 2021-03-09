package com.rsupport.notice.command.notice;

import java.io.File;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.rsupport.notice.mapper.NoticeMapper;

public class NoticeDeleteCommand implements NoticeCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		NoticeMapper noticeMapper = sqlSession.getMapper(NoticeMapper.class);

		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");

		String strNo = request.getParameter("no");
		int no = 0;
		if (strNo != null && !strNo.isEmpty()) {
			no = Integer.parseInt(strNo);
		}
		// 테이블 데이터 삭제 
		noticeMapper.delete(no);

		// 첨부가 있으면 첨부파일 삭제
		String filenames = request.getParameter("filename");
		String realPath = request.getServletContext().getRealPath("resources/storage/notice");
		if(filenames != null && !filenames.isEmpty()) {
			String[] filenameList = filenames.split("&");
			for (String filename : filenameList) {
				File file = new File(realPath, filename);
				if (file.exists()) {
					file.delete();
				}
			}
		}
	}
}
