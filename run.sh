#!/usr/bin/env bash

echo "{
  \"consumer_key\": \"${TWITTER_CONSUMER_KEY}\",
  \"consumer_secret\": \"${TWITTER_CONSUMER_SECRET}\",
  \"oauth_token\": \"${TWITTER_ACCESS_KEY}\",
  \"oauth_token_secret\": \"${TWITTER_TOKEN_SECRET}\"
}"  > /root/.ebooksrc

bundle exec ebooks archive purplebooth corpus/purplebooth.json
bundle exec ebooks consume corpus/purplebooth.json
bundle exec ebooks start