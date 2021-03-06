/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [ConsumerID]
      ,[GroupID]
      ,[AnswerID]
      ,[ProfileID]
      ,[lock]
  FROM [General_LR4].[dbo].[linktable] WHERE GroupID = 101

  SELECT COUNT(GroupID) AS Total
  FROM [General_LR4].[dbo].[linktable] WHERE GroupID = 101

  SELECT COUNT(DISTINCT AnswerID) AS TotalQuestionaires
  FROM [General_LR4].[dbo].[linktable] WHERE GroupID = 0 AND AnswerID != 0

  SELECT COUNT(ProfileID) AS TotalProfiles
  FROM [General_LR4].[dbo].[linktable] WHERE GroupID = 0 AND ProfileID != 0
  SELECT * FROM [General_LR4].[dbo].[linktable] WHERE GroupID = 0 AND ProfileID != 0

  SELECT COUNT(DISTINCT AnswerID) AS UniqueQuestionaires
  FROM [General_LR4].[dbo].[linktable] WHERE GroupID != 0 AND AnswerID != 0

  SELECT COUNT(DISTINCT ProfileID) AS UniqueProfiles
  FROM [General_LR4].[dbo].[linktable] WHERE GroupID != 0 AND ProfileID != 0
  SELECT *
  FROM [General_LR4].[dbo].[linktable] WHERE GroupID != 0 AND ProfileID != 0

  SELECT ProfileID, COUNT(*) FROM [General_LR4].[dbo].[linktable] GROUP BY ProfileID HAVING COUNT(*) > 2
  
  SELECT AnswerID, COUNT(*) FROM [General_LR4].[dbo].[linktable] GROUP BY AnswerID HAVING COUNT(*) > 2