SELECT count(DISTINCT User.userID)
FROM User, Item
WHERE User.rating > 1000 and User.userID == Item.seller;