/****** Filter all responses by survey to which they belong ******/
SELECT *
FROM dbo.Answers_char ac
WHERE ac.AnswerID IN (
	SELECT a.AnswerID
	FROM dbo.Answers a
	WHERE a.QuestionaireID IN (
		SELECT q.QuestionaireID
		FROM dbo.Questionaires q
		WHERE q.ViewName = 'ND_Shop'))

/****** Select groups by year and survey ******/
SELECT *
FROM dbo.Groups g
WHERE g.ParentID IN (
	SELECT g.GroupID
	FROM dbo.Groups g
	WHERE g.GroupName = '1999' AND g.ParentID IN (
		SELECT g.GroupID
		FROM dbo.Groups g
		WHERE g.GroupName = 'NRS LR'))
