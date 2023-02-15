rm item.dat
rm user.dat
rm category.dat
rm bid.dat
python skeleton_parser.py ebay_data/items-*.json
uniq item.dat > item.dat
uniq user.dat > user.dat
uniq category.dat > category.dat
uniq bid.dat > bid.dat

