-- MEMBER
INSERT 
  INTO MEMBER
       (ID, PW, NAME, GENDER, EMAIL, ROLE, REGDATE)
VALUES ('admin', '1234', '관리자', 'Male', 'admin@rsupport.com', 'ADMIN', CURRENT_TIMESTAMP);	

INSERT 
  INTO MEMBER
       (ID, PW, NAME, GENDER, EMAIL, ROLE, REGDATE)
VALUES ('user1', '1234', '사용자1', 'Male', 'user1@rsupport.com', 'USER', CURRENT_TIMESTAMP);	

INSERT 
  INTO MEMBER
       (ID, PW, NAME, GENDER, EMAIL, ROLE, REGDATE)
VALUES ('user2', '1234', '사용자2', 'Male', 'user2@rsupport.com', 'USER', CURRENT_TIMESTAMP);	

-- NOTICE
INSERT
  INTO NOTICE
       (WRITER, TITLE, CONTENT, FILENAME, REGDATE, LASTEDITED)
VALUES ('admin', '공지사항 입니다.', '공지사항 테스트 입니다.', '', '2021-03-02', '2021-03-02');
INSERT
  INTO NOTICE
       (WRITER, TITLE, CONTENT, FILENAME, REGDATE, LASTEDITED)
VALUES ('admin', '공지사항 입니다.', '공지사항 테스트 입니다.', '', '2021-03-03', '2021-03-03');
INSERT
  INTO NOTICE
       (WRITER, TITLE, CONTENT, FILENAME, REGDATE, LASTEDITED)
VALUES ('admin', '공지사항 입니다.', '공지사항 테스트 입니다.', '', '2021-03-04', '2021-03-04');
INSERT
  INTO NOTICE
       (WRITER, TITLE, CONTENT, FILENAME, REGDATE, LASTEDITED)
VALUES ('admin', '공지사항 입니다.', '공지사항 테스트 입니다.', '', '2021-03-05', '2021-03-05');
INSERT
  INTO NOTICE
       (WRITER, TITLE, CONTENT, FILENAME, REGDATE, LASTEDITED)
VALUES ('admin', '공지사항 입니다.', '공지사항 테스트 입니다.', 'qr_code_1615182105575.png&qr_code2_1615182105576.png&qr_code3_1615182105576.png&', '2021-03-06', '2021-03-06');
INSERT
  INTO NOTICE
       (WRITER, TITLE, CONTENT, FILENAME, REGDATE, LASTEDITED)
VALUES ('admin', '공지사항 입니다.', '공지사항 테스트 입니다.', 'qr_code_1615182105575.png&qr_code2_1615182105576.png&qr_code3_1615182105576.png&', '2021-03-07', '2021-03-07');
INSERT
  INTO NOTICE
       (WRITER, TITLE, CONTENT, FILENAME, REGDATE, LASTEDITED)
VALUES ('admin', '공지사항 입니다.', '공지사항 테스트 입니다.', 'qr_code_1615182105575.png&qr_code2_1615182105576.png&qr_code3_1615182105576.png&', '2021-03-08', '2021-03-08');


