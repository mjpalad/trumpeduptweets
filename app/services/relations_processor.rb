class RelationsProcessor

  def self.process(relations_result, text_to_process)

    if relations_result["relations"].present?
      relation = relations_result["relations"].first

      if relation["action"].present? && relation["action"]["text"].present?
        text_to_process = text_to_process.gsub relation["action"]["text"], relation["action"]["text"].upcase
        text_to_process += " *upper-cased verb*"
      end
    end

    return text_to_process
  end

end
