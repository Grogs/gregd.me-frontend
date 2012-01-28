#get fresh LastFM recent tracks
wget -O ./resources/lastfm.json "http://ws.audioscrobbler.com/2.0/?method=user.getrecenttracks&user=grogs&api_key=b25b959554ed76058ac220b7b2e0a026&format=json"

#fresh reddit data
wget -O ./resources/reddit.json "http://www.reddit.com/user/Grogs.json"

#fresh twitter data
wget -O ./resources/twitter.json "https://api.twitter.com/1/statuses/user_timeline.json?include_entities=true&include_rts=true&screen_name=grogs&count=10" --no-check-certificate

#get facebook data
access_token=AAABuwSzpNoUBADNvOZCls36CxjSYnJbI2icCkz8gu5UbcE2mnXPU405WJyU1eRv6mr8G6rOUBndrNnZAp0i5ri0ZBCfrhEZD
url="https://graph.facebook.com/me/feed?access_token=$access_token"
wget -O ./resources/facebook.json $url --no-check-certificate
