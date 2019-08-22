
echo "starting import..."

echo "Pointing user_profiles alias to the old index (user_profiles_201907020949)"
curl --header "Content-Type: application/json" \
  -X "POST" \
  --data '{"actions":[{"add": {"index": "user_profiles_201907020949", "alias": "user_profiles"}}]}' \
  $ELASTICSEARCH_URL/_aliases

echo "done"