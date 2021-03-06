/****** Quick Verification of profiles, answers & groups ******/
  SELECT *
  FROM [General_LR4].[dbo].[Groups] WHERE [GroupID] = 1000111
  SELECT TOP 5 *
  FROM [General_LR4].[dbo].[linktable] WHERE GroupID = 1000111
  SELECT *
  FROM [General_LR4].[dbo].[linktable] WHERE ProfileID = 12005320
  SELECT *
  FROM [General_LR4].[dbo].[linktable] WHERE AnswerID = 1004196

/****** TRY Collapse linktable ******/
  SELECT A.ProfileID 
  ,B.AnswerID
  ,A.GroupID
  FROM [General_LR4].[dbo].[linktable] A, [General_LR4].[dbo].[linktable] B
  WHERE A.ProfileID != 0
  AND B.ProfileID != 0
  AND A.GroupID != 0
  AND A.ProfileID = B.ProfileID

 /****** Add metadata to profile table (denormalise) ******/
 SELECT TOP 1000 pt.ProfileID
 ,pt.Datefield
 ,pt.Unitsread
 ,pt.Valid
 ,p.RecorderID
 ,p.Active
 ,puom.Description
 ,puom.UnitsID
 FROM [General_LR4].[dbo].[Profiletable] pt
 LEFT JOIN [General_LR4].[dbo].[profiles] p ON pt.ProfileID = p.ProfileId
	LEFT JOIN [General_LR4].[dbo].[ProfileUnitsOfMeasure] puom ON p.[Unit of measurement] = puom.UnitsID
WHERE pt.ProfileID = 12005320 OR pt.ProfileID = 12005321 OR pt.ProfileID = 12005322
ORDER BY pt.Datefield, pt.ProfileID  