class EntityProcessor

  GOOD_PEOPLE_QUALIFIERS = ["the fantastic", "strong", "funny"]
  BAD_PEOPLE_QUALIFIERS = ["Lyin'", "Crooked", "crazy", "weak", "dumb", "dumby", "loser", "terrible", "stupid", "dishonest", "lightweight", "incompetent", "boring", "fool", "pathetic", "moron", "racist", "clown", "disgusting" "overrated"]
  ALL_PEOPLE_QUALIFIERS = GOOD_PEOPLE_QUALIFIERS | BAD_PEOPLE_QUALIFIERS

  def self.process(entity_result, text_to_process)
    entity_result["entities"].each do |entity|
      if entity["type"] == "Person"
        if entity["sentiment"].present? && entity["sentiment"]["type"] == "positive"
          qualifier = GOOD_PEOPLE_QUALIFIERS.sample
          text_to_process = text_to_process.gsub entity["text"], "#{qualifier} #{entity["text"]}"
          text_to_process += "*person entity with positive sentiment: added #{qualifier} before name*"
        elsif entity["sentiment"].present? && entity["sentiment"]["type"] == "negative"
          qualifier = BAD_PEOPLE_QUALIFIERS.sample
          text_to_process = text_to_process.gsub entity["text"], "#{qualifier} #{entity["text"]}"
          text_to_process += "*person entity with negative sentiment: added #{qualifier} before name*"
        else
          qualifier = ALL_PEOPLE_QUALIFIERS.sample
          text_to_process = text_to_process.gsub entity["text"], "#{qualifier} #{entity["text"]}"
          text_to_process += "*person entity with neutral sentiment: added #{qualifier} before name*"
        end
      end
    end

    return text_to_process
  end

end
