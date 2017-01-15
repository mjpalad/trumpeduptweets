class SentimentProcessor

  def self.process(sentiment_result, ttweet)

    if sentiment_result["docSentiment"].present? && sentiment_result["docSentiment"]["type"].present?
      sentiment = sentiment_result["docSentiment"]["type"]
      if sentiment == "positive" || sentiment == "negative"
        ttweet.ttweet_body = ttweet.ttweet_body.gsub(/[[:punct:]]+$/,"") + "!!!"
        ttweet.executed_rules << "replaced end punctuation with exclamation marks due to #{sentiment} sentiment of entire tweet"
      end
    end

    return
  end

end
