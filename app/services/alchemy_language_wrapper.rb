class AlchemyLanguageWrapper

  def self.TextGetRankedNamedEntities(text_to_process)
    service = WatsonAPIClient::AlchemyLanguage.new(:apikey=> Rails.application.secrets.alchemy_api_key,:verify_ssl=>OpenSSL::SSL::VERIFY_NONE)
    result = service.TextGetRankedNamedEntities('text' => text_to_process,'outputMode' => 'json', 'sentiment' => '1')
    json_result = JSON.parse(result.body)
    return json_result
  end

end
