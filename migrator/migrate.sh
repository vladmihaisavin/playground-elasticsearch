
source ./default-env.sh

AUTHOR_JSON=`cat ./models/author.json`
BOOK_JSON=`cat ./models/book.json`
CATEGORY_JSON=`cat ./models/category.json`

echo "creating indices..."

curl -X PUT "$ELASTICSEARCH_URL/$AUTHOR_INDEX_NAME?pretty" -H 'Content-Type: application/json' -d "$AUTHOR_JSON"
curl -X PUT "$ELASTICSEARCH_URL/$BOOK_INDEX_NAME?pretty" -H 'Content-Type: application/json' -d "$BOOK_JSON"
curl -X PUT "$ELASTICSEARCH_URL/$CATEGORY_INDEX_NAME?pretty" -H 'Content-Type: application/json' -d "$CATEGORY_JSON"

echo "creating aliases..."
curl -X POST $ELASTICSEARCH_URL/_aliases?pretty -H "Content-Type: application/json" \
  -d '{"actions":[{"add": {"index": "'$AUTHOR_INDEX_NAME'", "alias": "authors"}}]}'
  
curl -X POST $ELASTICSEARCH_URL/_aliases?pretty -H "Content-Type: application/json" \
  -d '{"actions":[{"add": {"index": "'$BOOK_INDEX_NAME'", "alias": "books"}}]}'
  
curl -X POST $ELASTICSEARCH_URL/_aliases?pretty -H "Content-Type: application/json" \
  -d '{"actions":[{"add": {"index": "'$CATEGORY_INDEX_NAME'", "alias": "categories"}}]}'
  
echo "done migration."