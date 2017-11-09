class TwitterApi
  def self.btc_tweet
    client.user_timeline('BTCticker', exclude_replies: true, include_rts: false)
  end

  def self.eth_tweet
    client.user_timeline('ETHPriceBot', exclude_replies: true, include_rts: false)
  end

  def self.client
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_CONSUMER_KEY']
      config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
      config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
      config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
    end
  end
end
