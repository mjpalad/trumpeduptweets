class TweetConverter

  def self.convert(tweet)
    converted_tweet = tweet

    entity_result = AlchemyLanguageWrapper.TextGetRankedNamedEntities(converted_tweet)
    converted_tweet = EntityProcessor.process(entity_result, converted_tweet)

    return converted_tweet
  end

end
