WITH itemsGrouped as 
    (SELECT COUNT(*) as num
     FROM Category
     GROUP BY Category.itemID)
SELECT COUNT(*)
FROM itemsGrouped
WHERE num = 4;