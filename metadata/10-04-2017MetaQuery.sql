SELECT QuestionID, d.Datatype, ColumnNo, Question, ColumnAlias, q.DataType
  FROM [General_LR4].[dbo].[Questions] d  
  JOIN [General_LR4].[dbo].[QDataType] q
  ON d.Datatype=q.DataTypeId
  WHERE QuestionaireID = 3
  ORDER BY DataTypeId, ColumnNo

SELECT QuestionID, DataTypeId, ColumnNo, Question, ColumnAlias, q.DataType
  FROM [General_LR4].[dbo].[Questions] d  
  LEFT JOIN [General_LR4].[dbo].[QDataType] q
  ON d.Datatype=q.DataTypeId
  WHERE QuestionaireID = 6
  ORDER BY DataTypeId, ColumnNo

SELECT DISTINCT [8] FROM Answers_blob
SELECT DISTINCT [9] FROM Answers_blob

SELECT MIN([1]) MinVal, MAX([1]) MaxVal FROM Answers_number_view
