package com.study.spadeworker.domain.article.dto.article;

import com.study.spadeworker.domain.article.validation.ArticleCategoryValid;
import lombok.*;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.List;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class CreateArticleDto {

    @Getter
    @AllArgsConstructor
    @NoArgsConstructor
    public static class Request {
        @NotBlank(message = "게시글 제목은 필수입니다.")
        @Length(min = 1, max = 200, message = "게시글 제목 길이 제한은 1이상 200이하 입니다.")
        private String title;

        @NotBlank(message = "한줄 소개는 필수입니다.")
        @Length(min = 1, max = 100, message = "한줄 소개 길이는 1이상 100이하 입니다.")
        private String description;

        @NotBlank(message = "썸네일은 필수입니다.")
        private String thumbnail;

        @NotBlank(message = "게시글 본문은 필수입니다.")
        @Length(min = 1, message = "게시글 본문 길이 제한은 1이상 입니다.")
        private String content;

        @NotBlank(message = "게시글 카테고리는 필수입니다.")
        @ArticleCategoryValid
        private String articleCategory;

        @Size(max = 10, message = "게시글 해시태그는 개수 제한은 10이하 입니다.")
        private List<String> hashtagList = new ArrayList<>();

        @Setter
        private Long boardId;
    }

    @Getter
    @AllArgsConstructor
    public static class Response {
        private Long articleId;

        public static Response of(@NonNull final Long articleId) {
            return new Response(articleId);
        }
    }
}
