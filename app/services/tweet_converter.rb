class TweetConverter

  def self.convert(tweet)
    converted_tweet = tweet

    entity_result = AlchemyLanguageWrapper.TextGetRankedNamedEntities(converted_tweet)
    converted_tweet = EntityProcessor.process(entity_result, converted_tweet)

    sentiment_result = AlchemyLanguageWrapper.TextGetTextSentiment(converted_tweet)
    converted_tweet = SentimentProcessor.process(sentiment_result, converted_tweet)

    relations_result = AlchemyLanguageWrapper.TextGetRelations(converted_tweet)
    converted_tweet = RelationsProcessor.process(relations_result, converted_tweet)

    return converted_tweet
  end

end
