import sqlite3;

drop table if exists Item;
drop table if exists User;
drop table if exists Category;
drop table if exists Bid;

create table Item(itemID INTEGER PRIMARY KEY, 
                  name CHAR(30) UNIQUE, 
                  currently REAL, 
                  buy_price REAL, 
                  first_bid REAL, 
                  number_of_bids INTEGER, 
                  started DATETIME,
                  ends DATETIME,
                  seller CHAR(30), 
                  description CHAR(30),
                  FOREIGN KEY (seller) REFERENCES User);
create table User(userID STRING PRIMARY KEY, 
                  rating REAL UNIQUE, 
                  location CHAR(30), 
                  country CHAR(30));
create table Category(itemID INTEGER, 
                      category CHAR(30), 
                      FOREIGN KEY (itemID) REFERENCES Item);
create table Bid(itemID INTEGER, 
                 bidder STRING, 
                 time DATETIME, 
                 amount REAL, 
                 FOREIGN KEY (itemID) REFERENCES Item, 
                 FOREIGN KEY (bidder) REFERENCES User);