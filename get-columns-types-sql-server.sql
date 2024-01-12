SELECT 
   c.name as column_name,
   t.name AS data_type,
   c.max_length,
   c.precision
FROM sys.columns c
  INNER JOIN sys.types t 
  ON c.user_type_id = t.user_type_id
WHERE c.object_id = OBJECT_ID('dbo.TargetTable');
