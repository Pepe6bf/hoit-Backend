package com.study.spadeworker.domain.article.entity;

import com.study.spadeworker.domain.user.entity.User;
import com.study.spadeworker.global.config.audit.BaseEntity;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Objects;

@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Table(indexes = {
        @Index(columnList = "title"),
        @Index(columnList = "createdAt")
})
@Entity
public class Article extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "article_id")
    private Long id;

    @Column(nullable = false, length = 200)
    private String title;

    @Column(nullable = false, columnDefinition = "TEXT")
    private String content;

    @Column(nullable = false)
    private int likesCount;

    @Column(nullable = false)
    private int dislikesCount;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "user_id")
    private User user;

    private Article(String title, String content, User user) {
        this.title = title;
        this.content = content;
        this.likesCount = 0;
        this.dislikesCount = 0;
        this.user = user;
    }

    public static Article of(String title, String content, User user) {
        return new Article(title, content, user);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Article that)) return false;
        return id != null && id.equals(that.getId());
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}