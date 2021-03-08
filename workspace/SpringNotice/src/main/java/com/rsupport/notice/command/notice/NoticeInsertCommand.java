package com.rsupport.notice.command.notice;

import java.io.File;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.rsupport.notice.mapper.NoticeMapper;

public class NoticeInsertCommand implements NoticeCommand {

	@Override
	public void execute(SqlSession sqlSession, Model model) {
		
		NoticeMapper noticeMapper = sqlSession.getMapper(NoticeMapper.class);
		
		Map<String, Object> map = model.asMap();
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) map.get("multipartRequest");

		String title = multipartRequest.getParameter("title");
		String writer = multipartRequest.getParameter("writer");
		String content = multipartRequest.getParameter("content");

		List<MultipartFile> files = multipartRequest.getFiles("filename");
		String allImages = "";
		int result = 0;
		
		if (files != null && !files.isEmpty()) {
			
			// 첨부를 하나씩 꺼내기
			for (MultipartFile file : files) {
				
				// 꺼낸 첨부가 있는지 검사
				if (file != null && !file.isEmpty()) {

					String originalFilename = file.getOriginalFilename();

					String extension = originalFilename.substring(originalFilename.lastIndexOf(".") + 1);
					String filename = originalFilename.substring(0, originalFilename.lastIndexOf("."));

					String uploadFilename = filename + "_" + System.currentTimeMillis() + "." + extension;
					String realPath = multipartRequest.getServletContext().getRealPath("resources/storage/notice");

					File dir = new File(realPath);
					if (!dir.exists()) {
						dir.mkdirs();
					}

					File uploadFile = new File(realPath, uploadFilename);

					try {
						file.transferTo(uploadFile);
						// uploadFilename = URLEncoder.encode(uploadFilename,"utf-8");

					} catch (Exception e) {
						e.printStackTrace();
					}
					
					allImages += uploadFilename + "&";

				}  // if(file != null) {
				
			} // for (MultipartFile file : files) {
			System.out.println("allImages: " + allImages);
			result = noticeMapper.insert(writer, title, content, allImages);
			
		} else { // 첨부가 없는 데이터를 테이블에 저장합니다.
			result = noticeMapper.insert(writer, title, content, allImages);
		}
		model.addAttribute("noticeInsertResult", result);
		
	}

}
