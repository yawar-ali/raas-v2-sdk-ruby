# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Raas
  class StatusController < BaseController
    @@instance = StatusController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Retrieve system status
    # @return SystemStatusResponseModel response from the API call
    def get_system_status
      begin
        @logger.info("get_system_status called.")

        # prepare query url
        @logger.info("Preparing query URL for get_system_status.")
        _query_builder = Configuration.get_base_uri().clone
        _query_builder << '/pulse'
        _query_url = APIHelper.clean_url _query_builder

        # prepare headers
        @logger.info("Preparing headers for get_system_status.")
        _headers = {
          'accept' => 'application/json'
        }

        # prepare and execute HttpRequest
        @logger.info('Preparing and executing HttpRequest for get_system_status.')
        _request = @http_client.get _query_url, headers: _headers
        _context = execute_request(_request, name: 'get_system_status')
        validate_response(_context)

        # return appropriate response type
        @logger.info("Returning response for get_system_status.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        return SystemStatusResponseModel.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end
  end
end
