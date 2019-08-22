
AUTHOR_JSON=`cat ../models/author.json`
BOOK_JSON=`cat ../models/book.json`
CATEGORY_JSON=`cat ../models/category.json`

echo "creating indices..."

curl -X PUT "localhost:9200/authors?pretty" -H 'Content-Type: application/json' -d "$AUTHOR_JSON"
curl -X PUT "localhost:9200/books?pretty" -H 'Content-Type: application/json' -d "$BOOK_JSON"
curl -X PUT "localhost:9200/categories?pretty" -H 'Content-Type: application/json' -d "$CATEGORY_JSON"

echo "done"