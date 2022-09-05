-- 사용자 권한 테스트 데이터
insert into role (authority, created_at, modified_at) values ('USER', now(), now()) ON DUPLICATE KEY UPDATE `authority`=VALUES(`authority`);
insert into role (authority, created_at, modified_at) values ('ADMIN', now(), now()) ON DUPLICATE KEY UPDATE `authority`=VALUES(`authority`);
insert into role (authority, created_at, modified_at) values ('BOARD_HOST', now(), now()) ON DUPLICATE KEY UPDATE `authority`=VALUES(`authority`);

-- 게시판 카테고리 테스트 데이터
insert into board_category (title, created_at, modified_at) values ('프로그래밍', now(), now()) ON DUPLICATE KEY UPDATE `title`=VALUES(`title`);
insert into board_category (title, created_at, modified_at) values ('취미', now(), now()) ON DUPLICATE KEY UPDATE `title`=VALUES(`title`);
insert into board_category (title, created_at, modified_at) values ('일상', now(), now()) ON DUPLICATE KEY UPDATE `title`=VALUES(`title`);
insert into board_category (title, created_at, modified_at) values ('예능', now(), now()) ON DUPLICATE KEY UPDATE `title`=VALUES(`title`);

-- 사용자 테스트 데이터
insert into user(login_id, password, name, profile_img_url, email, description, provider_type, status, created_at, modified_at)
    values ('testerId1', 'testerPw1234', '게시글 작성자', 'tester photo', 'tester1@email.com', 'This is test account', 'LOCAL', 'ACTIVE', now(), now())
    ON DUPLICATE KEY UPDATE `login_id`=VALUES(`login_id`);
insert into user(login_id, password, name, profile_img_url, email, description, provider_type, status, created_at, modified_at)
values ('testerId2', 'testerPw1234', '댓글 작성자', 'tester photo', 'tester2@email.com', 'This is test account', 'LOCAL', 'ACTIVE', now(), now())
    ON DUPLICATE KEY UPDATE `login_id`=VALUES(`login_id`);
insert into user(login_id, password, name, profile_img_url, email, description, provider_type, status, created_at, modified_at)
values ('testerId3', 'testerPw1234', '대댓글 반박자', 'tester photo', 'tester3@email.com', 'This is test account', 'LOCAL', 'ACTIVE', now(), now())
    ON DUPLICATE KEY UPDATE `login_id`=VALUES(`login_id`);

-- 게시판 테스트 데이터
insert into board(title, description, image_url, user_id, board_category_id, created_at, created_by, modified_at, modified_by)
    values ('스프링 게시판', '스!프!링! 시작해볼까요?', 'img_url aaaa', 1, 1, now(), 'tester', now(), 'tester')
    ON DUPLICATE KEY UPDATE `title`=VALUES(`title`);

-- 게시글 카테고리 테스트 데이터
insert into article_category (title, created_at, modified_at) values ('잡담', now(), now()) ON DUPLICATE KEY UPDATE `title`=VALUES(`title`);
insert into article_category (title, created_at, modified_at) values ('질문', now(), now()) ON DUPLICATE KEY UPDATE `title`=VALUES(`title`);
insert into article_category (title, created_at, modified_at) values ('홍보/모집', now(), now()) ON DUPLICATE KEY UPDATE `title`=VALUES(`title`);
insert into article_category (title, created_at, modified_at) values ('공지 사항', now(), now()) ON DUPLICATE KEY UPDATE `title`=VALUES(`title`);
insert into article_category (title, created_at, modified_at) values ('이벤트', now(), now()) ON DUPLICATE KEY UPDATE `title`=VALUES(`title`);

-- 게시글 테스트 데이터
insert into article(title, content, likes_count, dislikes_count, article_category_id, board_id, user_id, created_at, created_by, modified_at, modified_by)
    values ("게시글 제목입니다!!", "게겍게겍ㄲ", 0, 0, 1, 1, 1, now(), "게시글 작성자", now(), "게시글 작성자")
        ON DUPLICATE KEY UPDATE `title`=VALUES(`title`);


-- 게시글 최상위 댓글 테스트 데이터
insert into article_comment(content, likes_count, dislikes_count, is_child, article_id, user_id, parent_comment_id, recipient_id, created_at, created_by, modified_at, modified_by)
    values ('댓글1 입니다!!!', 0, 0, 0, 1, 2, NULL, NULL, now(), '게시글 최상위 작성자', now(), '게시글 최상위 작성자') ON DUPLICATE KEY UPDATE `content`=VALUES(`content`);

insert into article_comment(content, likes_count, dislikes_count, is_child, article_id, user_id, parent_comment_id, recipient_id, created_at, created_by, modified_at, modified_by)
values ('댓글2 입니다!!!', 0, 0, 0, 1, 2, null, null, now(), '게시글 최상위 작성자', now(), '게시글 최상위 작성자')
    ON DUPLICATE KEY UPDATE `content`=VALUES(`content`);

insert into article_comment(content, likes_count, dislikes_count, is_child, article_id, user_id, parent_comment_id, recipient_id, created_at, created_by, modified_at, modified_by)
values ('댓글3 입니다!!!', 0, 0, 0, 1, 2, null, null, now(), '게시글 최상위 작성자', now(), '게시글 최상위 작성자')
    ON DUPLICATE KEY UPDATE `content`=VALUES(`content`);

insert into article_comment(content, likes_count, dislikes_count, is_child, article_id, user_id, parent_comment_id, recipient_id, created_at, created_by, modified_at, modified_by)
values ('댓글4 입니다!!!', 0, 0, 0, 1, 2, null, null, now(), '게시글 최상위 작성자', now(), '게시글 최상위 작성자')
    ON DUPLICATE KEY UPDATE `content`=VALUES(`content`);

insert into article_comment(content, likes_count, dislikes_count, is_child, article_id, user_id, parent_comment_id, recipient_id, created_at, created_by, modified_at, modified_by)
values ('댓글5 입니다!!!', 0, 0, 0, 1, 2, null, null, now(), '게시글 최상위 작성자', now(), '게시글 최상위 작성자')
    ON DUPLICATE KEY UPDATE `content`=VALUES(`content`);


-- 게시글 대댓글 테스트 데이터
insert into article_comment(content, likes_count, dislikes_count, is_child, article_id, user_id, parent_comment_id, recipient_id, created_at, created_by, modified_at, modified_by)
values ('대댓글5 입니다!!!', 0, 0, 1, 1, 3, 3, NULL, now(), '대댓글 작성자', now(), '대댓글 작성자')
    ON DUPLICATE KEY UPDATE `content`=VALUES(`content`);

insert into article_comment(content, likes_count, dislikes_count, is_child, article_id, user_id, parent_comment_id, recipient_id, created_at, created_by, modified_at, modified_by)
values ('대댓글5 입니다!!!', 0, 0, 1, 1, 3, 3, NULL, now(), '대댓글 작성자', now(), '대댓글 작성자')
    ON DUPLICATE KEY UPDATE `content`=VALUES(`content`);

insert into article_comment(content, likes_count, dislikes_count, is_child, article_id, user_id, parent_comment_id, recipient_id, created_at, created_by, modified_at, modified_by)
values ('전 님 의견 반박합니다!!!!!!!', 0, 0, 1, 1, 3, 3, 3, now(), '대댓글 작성자', now(), '대댓글 작성자')
    ON DUPLICATE KEY UPDATE `content`=VALUES(`content`);
