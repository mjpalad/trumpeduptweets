class SentimentProcessor

  def self.process(sentiment_result, text_to_process)

    if sentiment_result["docSentiment"].present? && sentiment_result["docSentiment"]["type"].present?
      sentiment = sentiment_result["docSentiment"]["type"]
      if sentiment == "positive" || sentiment == "negative"
        text_to_process = text_to_process.gsub(/[[:punct:]]+$/,"") + "!!!"
        text_to_process += " *replaced end punctuation with exclamation marks due to #{sentiment} sentiment of entire tweet*"
      end
    end

    return text_to_process
  end

end
