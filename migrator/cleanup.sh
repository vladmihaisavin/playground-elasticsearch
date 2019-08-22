
source ./default-env.sh
echo "deleting indices..."

curl -X DELETE "$ELASTICSEARCH_URL/$AUTHOR_INDEX_NAME?pretty" 
curl -X DELETE "$ELASTICSEARCH_URL/$BOOK_INDEX_NAME?pretty"
curl -X DELETE "$ELASTICSEARCH_URL/$CATEGORY_INDEX_NAME?pretty"

echo "done cleanup."