
echo "deleting indices..."

curl -X DELETE "localhost:9200/authors?pretty" 
curl -X DELETE "localhost:9200/books?pretty"
curl -X DELETE "localhost:9200/categories?pretty"

echo "done"