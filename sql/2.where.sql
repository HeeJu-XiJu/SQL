-- User.objects.filter(age=41)
-- SELECT * FROM movies_user
-- WHERE age=41;

-- Movie.objects.filter(year__gt=2000)
-- SELECT * FROM movies_movie
-- WHERE year > 2000;


-- Movie.objects.filter(year__gt=2000, year__lt=2010)
-- SELECT * FROM movies_movie
-- WHERE year > 2000 AND year < 2010;


-- Movie.objects.filter(Q(year__lt=2000)|Q(year__gt=2010))
-- SELECT * FROM movies_movie
-- WHERE year < 2000 OR year > 2010;


-- User.objects.exclude(age__gt=30)
-- SELECT * FROM movies_user
-- WHERE NOT age > 30;


-- Movie.objects.aggregate(Min('year'))
-- SELECT MIN(year) FROM movies_movie;

-- Movie.objects.aggregate(Max('year'))
-- SELECT MAX(year) FROM movies_movie;


-- Score.objects.filter(movie_id=1).aggregate(Min('value'), Max('value'))
-- SELECT MAX(value), MIN(value) FROM movies_score
-- WHERE movie_id=1;


-- Movie.objects.count()
-- SELECT COUNT(*) FROM movies_movie;


-- Movie.objects.filter(year__gt=2000).count()
-- SELECT COUNT(*) FROM movies_movie
-- WHERE year > 2000;


-- User.objects.values('country').distinct().count()
-- SELECT COUNT(DISTINCT country) FROM movies_user;


-- User.objects.aggregate(Sum('age'))
-- SELECT SUM(age) FROM movies_user;


-- Score.objects.filter(movie_id=10).aggregate(Sum('value'))
-- SELECT SUM(value) FROM movies_score
-- WHERE movie_id=10;


-- Movie.objects.aggregate(Avg('year'))
-- SELECT AVG(year) FROM movies_movie;


-- Score.objects.filter(movie_id=10).aggregate(Avg('value'))
-- SELECT AVG(value) FROM movies_score
-- WHERE movie_id=10;


-- Movie.objects.filter(title__contains='the')
-- 대소문자 구분 안됨
-- SELECT * FROM movies_movie
-- WHERE title LIKE '%the%';


-- Movie.objects.filter(title__startswith='the')
-- the로 시작하는 문자
-- SELECT * FROM movies_movie
-- WHERE title LIKE 'the%';


-- Movie.objects.filter(title__endswith='on.')
-- SELECT * FROM movies_movie
-- WHERE title LIKE '%on.';


-- django ORM에서 정규표현식으로 표현가능
-- g로 시작하고 d로 끝나면 사이에 2글자가 있는 단어
-- SELECT * FROM movies_movie
-- WHERE title LIKE '%g__d%';


-- Movie.objects.filter(year__in=[2001, 2002, 2003])
-- SELECT * FROM movies_movie
-- WHERE year IN (2001, 2002, 2003);


-- User.objects.filter(age__range=[20, 29])
SELECT * FROM movies_user
WHERE age BETWEEN 20 AND 29;