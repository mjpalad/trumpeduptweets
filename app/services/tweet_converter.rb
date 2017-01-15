class TweetConverter

  def self.convert(ttweet)

    ttweet.ttweet_body = ttweet.tweet_body

    entity_result = AlchemyLanguageWrapper.TextGetRankedNamedEntities(ttweet.ttweet_body)
    EntityProcessor.process(entity_result, ttweet)

    sentiment_result = AlchemyLanguageWrapper.TextGetTextSentiment(ttweet.ttweet_body)
    SentimentProcessor.process(sentiment_result, ttweet)

    relations_result = AlchemyLanguageWrapper.TextGetRelations(ttweet.ttweet_body)
    RelationsProcessor.process(relations_result, ttweet)

    ReplacementProcessor.process(ttweet)

    return ttweet
  end

end
