class AlchemyLanguageWrapper

  def self.TextGetTextSentiment(text_to_process)
    service = get_service_connection
    result = service.TextGetTextSentiment('text' => text_to_process, 'outputMode' => 'json')
    json_result = JSON.parse(result.body)
    return json_result
  end

  def self.TextGetRankedNamedEntities(text_to_process)
    service = get_service_connection
    result = service.TextGetRankedNamedEntities('text' => text_to_process,'outputMode' => 'json', 'sentiment' => '1')
    json_result = JSON.parse(result.body)
    return json_result
  end

  def self.TextGetRelations(text_to_process)
    service = get_service_connection
    result = service.TextGetRelations('text' => text_to_process,'outputMode' => 'json', 'sentiment' => '1')
    json_result = JSON.parse(result.body)
    return json_result
  end

  def self.get_service_connection
    return WatsonAPIClient::AlchemyLanguage.new(:apikey=> Rails.application.secrets.alchemy_api_key,:verify_ssl=>OpenSSL::SSL::VERIFY_NONE)
  end

end
