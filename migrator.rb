require 'mongo'
require 'net/http'
require 'json'
require 'pry'

p "GET https://twitterelections.herokuapp.com/tweets/all/votetrump/2016-08-01/2016-11-09"
uri_trump = URI('https://twitterelections.herokuapp.com/tweets/all/votetrump/2016-08-01/2016-11-09')
response_trump    = JSON.parse Net::HTTP.get(uri_trump)
#
p "GET https://twitterelections.herokuapp.com/tweets/all/voteclinton/2016-08-01/2016-11-09"
uri_clinton = URI('https://twitterelections.herokuapp.com/tweets/all/voteclinton/2016-08-01/2016-11-09')
response_clinton  = JSON.parse Net::HTTP.get(uri_clinton)


# heroku_mongo_user = { user: "heroku_j8jqt0v3", account: "heroku_j8jqt0v3" }
# heroku_db_uri="mongodb://#{heroku_mongo_user[:user]}:#{heroku_mongo_user[:account]}@ds119728.mlab.com:19728/heroku_j8jqt0v3"
# localhost_uri='mongodb://127.0.0.1:27017/tabi_tweets'
# 
# client = Mongo::Client.new(localhost_uri, {socket_timeout: 10*60*1000, max_time_ms: 10*60*1000, connect_timeout: 10*60*1000})
# 
# clinton_collection = client[:clinton_tweets]
# trump_collection   = client[:trump_tweets]
# 
# trump_collection.insert_many response_trump
# clinton_collection.insert_many response_clinton

File.write('db/clinton.json', response_clinton.to_json)
File.write('db/trump.json', response_trump.to_json)

# .delete_many