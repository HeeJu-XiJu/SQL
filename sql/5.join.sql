-- 1번 유저가 작성한 모든 점수(Score)
-- User.objects.get(id=1).score_set.all()
-- Score.objects.filter(user_id=1)

-- SELECT movies_score.id FROM movies_user
-- JOIN movies_score ON movies_user.id = movies_score.user_id
-- WHERE movies_user.id=1;


-- 1번 영화의 카테고리
-- Movie.objects.get(id=1).categories.all()

-- M:N관계에서는 JOIN문 2개 필요
-- SELECT * FROM movies_movie
-- JOIN movies_category_movies ON movies_movie.id = movies_category_movies.movie_id
-- JOIN movies_category ON movies_category.id = movies_category_movies.category_id
-- WHERE movies_movie.id=1;


-- 1번 유저가 작성한 모든 점수의 평균
-- User.objects.get(id=1).score_set.all().aggregate(Avg('value'))

-- SELECT AVG(value) FROM movies_user
-- JOIN movies_score ON movies_user.id = movies_score.user_id
-- WHERE movies_user.id=1;


-- drama 카테고리에 속한 모든 영화
-- Category.objects.get(name='drama').movies.all()

-- SELECT * FROM movies_movie
-- JOIN movies_category_movies ON movies_movie.id = movies_category_movies.movie_id
-- JOIN movies_category ON movies_category.id = movies_category_movies.category_id
-- WHERE movies_category.name = 'drama';


-- group by
-- User.objects.values('country').annotate(Count('id'))
-- SELECT country, COUNT(*) FROM movies_user
-- GROUP BY country;


-- 나라별 점수 평균
-- User.objects.values('country').annotate(Count('id'), Avg('score__value'))

SELECT country, Count(*), AVG(value) FROM movies_user
JOIN movies_score ON movies_user.id = movies_score.user_id
GROUP BY country;