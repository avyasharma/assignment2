SELECT itemID
FROM Item
WHERE currently = (SELECT max(currently)
                    FROM Item);