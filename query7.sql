SELECT count(DISTINCT category)
FROM Item, Bid, Category
WHERE Item.itemID == Bid.itemID and
    Item.itemID == Category.itemID and
    Bid.amount > 100;