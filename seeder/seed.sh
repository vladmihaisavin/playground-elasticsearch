#!/bin/bash

source ./default-env.sh

AUTHORS_JSON='./seeder/authors.json'
BOOKS_JSON='./seeder/books.json'
CATEGORIES_JSON='./seeder/categories.json'

echo "importing categories..."
function parseAndInsert {
  echo "importing $1..."
  length=`cat $1 | jq -r '. | length'`
  for i in `seq 1 $length`;
  do
    record=`cat $1 | jq .[$i-1]`
    curl -X POST $2 -H 'Content-Type: application/json' -d "$record"
  done
  echo "done importing $1"
}

parseAndInsert $AUTHORS_JSON "$ELASTICSEARCH_URL/authors/author?pretty"
parseAndInsert $BOOKS_JSON "$ELASTICSEARCH_URL/books/book?pretty"
parseAndInsert $CATEGORIES_JSON "$ELASTICSEARCH_URL/categories/category?pretty"
