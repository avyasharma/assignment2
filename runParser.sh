if test -f "item.dat"; then
    rm item.dat
fi
if test -f "user.dat"; then
    rm user.dat
fi
if test -f "category.dat"; then
    rm category.dat
fi
if test -f "bid.dat"; then
    rm bid.dat
fi
if test -f "item_uniq.dat"; then
    rm item_uniq.dat
fi
if test -f "user_uniq.dat"; then
    rm user_uniq.dat
fi
if test -f "category_uniq.dat"; then
    rm category_uniq.dat
fi
if test -f "bid_uniq.dat"; then
    rm bid_uniq.dat
fi

python skeleton_parser.py ebay_data/items-*.json

sort item.dat | uniq > item_uniq.dat
sort user.dat | uniq > user_uniq.dat
sort category.dat | uniq > category_uniq.dat
sort bid.dat | uniq > bid_uniq.dat

sqlite3 "ebaydata.db" < create.sql
sqlite3 "ebaydata.db" < load.txt 