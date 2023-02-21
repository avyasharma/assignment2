SELECT count(DISTINCT Item.seller)
FROM Item, Bid
WHERE Item.seller == Bid.bidder;