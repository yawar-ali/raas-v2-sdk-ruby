# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Raas
  class ExchangeRatesController < BaseController
    @@instance = ExchangeRatesController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Retrieve current exchange rates
    # @return void response from the API call
    def get_exchange_rates
      begin
        @logger.info("get_exchange_rates called.")

        # prepare query url
        @logger.info("Preparing query URL for get_exchange_rates.")
        _query_builder = Configuration.get_base_uri().clone
        _query_builder << '/exchangerates'
        _query_url = APIHelper.clean_url _query_builder

        # prepare and execute HttpRequest
        @logger.info('Preparing and executing HttpRequest for get_exchange_rates.')
        _request = @http_client.get _query_url
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_exchange_rates')
        validate_response(_context)

        # return appropriate response type
        @logger.info("Returning response for get_catalog.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        return decoded['exchangeRates'].map do |rate|
          ExchangeRateModel.from_hash(rate)
        end
      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end
  end
end
