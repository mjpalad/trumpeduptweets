class RelationsProcessor

  def self.process(relations_result, ttweet)

    if relations_result["relations"].present?
      relation = relations_result["relations"].first

      if relation["action"].present? && relation["action"]["text"].present?
        ttweet.ttweet_body = ttweet.ttweet_body.gsub relation["action"]["text"], relation["action"]["text"].upcase
        ttweet.executed_rules << "upper-cased verb"
      end
    end

    return
  end

end
