SELECT d.QuestionID, d.Datatype, d.ColumnNo, d.Question, d.ColumnAlias, q.DataType, r.Lower, r.Upper, r.AllowNull
  FROM [General_LR4].[dbo].[Questions] d  
  LEFT JOIN [General_LR4].[dbo].[QDataType] q ON d.Datatype = q.DataTypeId
  LEFT JOIN [General_LR4].[dbo].[QConstraints] r ON d.QuestionaireID = r.QuestionaireID AND d.QuestionID = r.QuestionID
  WHERE d.QuestionaireID = 3
  ORDER BY DataTypeId, ColumnNo

SELECT d.QuestionID, d.Datatype, d.ColumnNo, d.Question, d.ColumnAlias, q.DataType, r.Lower, r.Upper, r.AllowNull
  FROM [General_LR4].[dbo].[Questions] d  
  LEFT JOIN [General_LR4].[dbo].[QDataType] q ON d.Datatype = q.DataTypeId
  LEFT JOIN [General_LR4].[dbo].[QConstraints] r ON d.QuestionaireID = r.QuestionaireID AND d.QuestionID = r.QuestionID
  WHERE d.QuestionaireID = 6
  ORDER BY DataTypeId, ColumnNo

SELECT DISTINCT [8] FROM [General_LR4].[dbo].[Answers_blob]
SELECT DISTINCT [9] FROM [General_LR4].[dbo].[Answers_blob]

SELECT MIN([1]) MinVal, MAX([1]) MaxVal FROM [General_LR4].[dbo].[Answers_number_view]