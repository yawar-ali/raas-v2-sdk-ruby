# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Raas
  class CatalogController < BaseController
    @@instance = CatalogController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get Catalog
    # @return CatalogModel response from the API call
    def get_catalog
      begin
        @logger.info("get_catalog called.")

        # prepare query url
        @logger.info("Preparing query URL for get_catalog.")
        _query_builder = Configuration.get_base_uri().clone
        _query_builder << '/catalogs'
        _query_url = APIHelper.clean_url _query_builder

        # prepare headers
        @logger.info("Preparing headers for get_catalog.")
        _headers = {
          'accept' => 'application/json'
        }

        # prepare and execute HttpRequest
        @logger.info('Preparing and executing HttpRequest for get_catalog.')
        _request = @http_client.get _query_url, headers: _headers
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_catalog')
        validate_response(_context)

        # return appropriate response type
        @logger.info("Returning response for get_catalog.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        return CatalogModel.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end
  end
end
