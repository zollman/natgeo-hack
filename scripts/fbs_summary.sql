CREATE VIEW fbs_summary AS
SELECT
  exp.value as exports,
  imp.value as imports,
  exp.value-imp.value as surplus,
  dom.value as domestic,
  exp.item,
  exp.country,
  exp.year,
  exp.unit
  
FROM
  fbs_exports as exp
  JOIN fbs_imports as imp  USING (country,year,item)
  JOIN fbs_domestic as dom USING (country,year,item)
  
