package com.study.spadeworker.domain.article.dto.articleComment;

import lombok.*;

import javax.validation.constraints.NotNull;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class CreateArticleCommentDto {

    @Getter
    @AllArgsConstructor
    @NoArgsConstructor
    public static class Request {
        @NotNull(message = "댓글 본문은 필수 입니다.")
        private String content;
        @Setter
        private Long articleId;
    }

    @Getter
    @AllArgsConstructor
    @Builder
    public static class Response {
        private Long articleCommentId;

        public static Response of(@NonNull Long articleCommentId) {
            return Response.builder()
                    .articleCommentId(articleCommentId)
                    .build();
        }
    }
}