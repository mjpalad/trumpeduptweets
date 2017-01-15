class EntityProcessor

  GOOD_PEOPLE_QUALIFIERS = VocabularyList.find_by_name("GOOD_PEOPLE_QUALIFIERS").vocabulary_words.pluck(:word)
  #["the fantastic", "strong", "funny"]

  BAD_PEOPLE_QUALIFIERS = VocabularyList.find_by_name("BAD_PEOPLE_QUALIFIERS").vocabulary_words.pluck(:word)
  #["Lyin'", "Crooked", "crazy", "weak", "dumb", "dumby", "loser", "terrible", "stupid", "dishonest", "lightweight", "incompetent", "boring", "fool", "pathetic", "moron", "racist", "clown", "disgusting" "overrated"]

  ALL_PEOPLE_QUALIFIERS = GOOD_PEOPLE_QUALIFIERS | BAD_PEOPLE_QUALIFIERS

  def self.process(entity_result, ttweet)
    entity_result["entities"].each do |entity|
      if entity["type"] == "Person"
        if entity["sentiment"].present? && entity["sentiment"]["type"] == "positive"
          qualifier = GOOD_PEOPLE_QUALIFIERS.sample
          ttweet.ttweet_body = ttweet.ttweet_body.gsub entity["text"], "#{qualifier} #{entity["text"]}"
          ttweet.executed_rules << "person entity with positive sentiment: added #{qualifier} before name"
        elsif entity["sentiment"].present? && entity["sentiment"]["type"] == "negative"
          qualifier = BAD_PEOPLE_QUALIFIERS.sample
          ttweet.ttweet_body = ttweet.ttweet_body.gsub entity["text"], "#{qualifier} #{entity["text"]}"
          ttweet.executed_rules << "person entity with negative sentiment: added #{qualifier} before name"
        else
          qualifier = ALL_PEOPLE_QUALIFIERS.sample
          ttweet.ttweet_body = ttweet.ttweet_body.gsub entity["text"], "#{qualifier} #{entity["text"]}"
          ttweet.executed_rules << "person entity with neutral sentiment: added #{qualifier} before name"
        end
      end

    end

    return
  end

end
