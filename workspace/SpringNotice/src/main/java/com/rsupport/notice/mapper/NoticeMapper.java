package com.rsupport.notice.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.rsupport.notice.dto.NoticeDto;

@Mapper
public interface NoticeMapper {
	
	List<NoticeDto> list(int beginRecord, int endRecord);
	int totalRecord();
	int insert(String writer, String title, String content, String filename);
	NoticeDto view(int no);
	int delete(int no);
	int update(String title, String content, String filename, int no);
}
