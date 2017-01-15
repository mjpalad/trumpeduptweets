class ReplacementProcessor

  def self.process(ttweet)
    Replacement.all.each do |replacement|
      replacement.words_to_find.each do |word_to_find|
        if ttweet.ttweet_body =~ /#{word_to_find}/i
          substitute_word = replacement.words_to_substitute.sample
          ttweet.ttweet_body = ttweet.ttweet_body.gsub(/#{word_to_find}/i,substitute_word)
          ttweet.executed_rules << "replaced #{word_to_find} with #{substitute_word} due to replacement rule"
        end
      end
    end

    return
  end

end
