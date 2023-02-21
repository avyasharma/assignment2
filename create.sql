drop table if exists Item;
drop table if exists User;
drop table if exists Category;
drop table if exists Bid;

create table Item(itemID INTEGER PRIMARY KEY, 
                  name CHAR(500) NOT NULL, 
                  currently REAL NOT NULL, 
                  buy_price REAL, 
                  first_bid REAL NOT NULL, 
                  number_of_bids INTEGER NOT NULL, 
                  started DATETIME NOT NULL,
                  ends DATETIME NOT NULL,
                  seller CHAR(500) NOT NULL, 
                  description TEXT,
                  FOREIGN KEY (seller) REFERENCES User);
create table User(userID STRING PRIMARY KEY, 
                  rating REAL NOT NULL, 
                  location CHAR(500), 
                  country CHAR(500));
create table Category(itemID INTEGER NOT NULL, 
                      category CHAR(500) NOT NULL, 
                      FOREIGN KEY (itemID) REFERENCES Item, 
                      PRIMARY KEY(itemID, category));
create table Bid(bidder STRING NOT NULL, 
                 time DATETIME NOT NULL, 
                 amount REAL NOT NULL, 
                 itemID INTEGER NOT NULL,
                 FOREIGN KEY (itemID) REFERENCES Item, 
                 FOREIGN KEY (bidder) REFERENCES User);