planCommentsURL=$(jq -r .pull_request.comments_url < "$GITHUB_EVENT_PATH")
echo "plan: info: commenting on the pull request"
echo "${planPayload}" | curl -s -f -S -H "Authorization: token ${GITHUB_TOKEN}" --header "Content-Type: application/json" --data @- "${planCommentsURL}" > /dev/null
