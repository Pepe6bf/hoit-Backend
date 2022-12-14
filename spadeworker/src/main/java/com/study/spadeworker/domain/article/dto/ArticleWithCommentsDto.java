package com.study.spadeworker.domain.article.dto;

import com.study.spadeworker.domain.article.dto.article.ArticleDto;
import com.study.spadeworker.domain.article.dto.articleComment.ArticleCommentDto;
import lombok.Builder;
import lombok.Getter;

import java.util.List;

@Getter
public class ArticleWithCommentsDto {

    private ArticleDto article;
    private List<ArticleCommentDto> commentList;

    @Builder
    public ArticleWithCommentsDto(ArticleDto article, List<ArticleCommentDto> commentList) {
        this.article = article;
        this.commentList = commentList;
    }
}
