# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Raas
  class CustomersController < BaseController
    @@instance = CustomersController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get a customer
    # @param [String] customer_identifier Required parameter: Customer Identifier
    # @return CustomerModel response from the API call
    def get_customer(customer_identifier)
      begin
        @logger.info("get_customer called.")

        # validate required parameters
        @logger.info("Validating required parameters for get_customer.")
        validate_parameters({
          'customer_identifier' => customer_identifier
        })

        # prepare query url
        @logger.info("Preparing query URL for get_customer.")
        _query_builder = Configuration.get_base_uri().clone
        _query_builder << '/customers/{customerIdentifier}'
        _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
          'customerIdentifier' => customer_identifier
        }
        _query_url = APIHelper.clean_url _query_builder

        # prepare headers
        @logger.info("Preparing headers for get_customer.")
        _headers = {
          'accept' => 'application/json'
        }

        # prepare and execute HttpRequest
        @logger.info('Preparing and executing HttpRequest for get_customer.')
        _request = @http_client.get _query_url, headers: _headers
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_customer')
        validate_response(_context)

        # return appropriate response type
        @logger.info("Returning response for get_customer.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        return CustomerModel.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # Create a new customer
    # @param [CreateCustomerRequestModel] body Required parameter: Request Body
    # @return CustomerModel response from the API call
    def create_customer(body)
      begin
        @logger.info("create_customer called.")

        # validate required parameters
        @logger.info("Validating required parameters for create_customer.")
        validate_parameters({
          'body' => body
        })

        # prepare query url
        @logger.info("Preparing query URL for create_customer.")
        _query_builder = Configuration.get_base_uri().clone
        _query_builder << '/customers'
        _query_url = APIHelper.clean_url _query_builder

        # prepare headers
        @logger.info("Preparing headers for create_customer.")
        _headers = {
          'accept' => 'application/json',
          'content-type' => 'application/json; charset=utf-8'
        }

        # prepare and execute HttpRequest
        @logger.info('Preparing and executing HttpRequest for create_customer.')
        _request = @http_client.post _query_url, headers: _headers, parameters: body.to_json
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'create_customer')
        validate_response(_context)

        # return appropriate response type
        @logger.info("Returning response for create_customer.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        return CustomerModel.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # Gets all customers under the platform
    # @return List of CustomerModel response from the API call
    def get_all_customers
      begin
        @logger.info("get_all_customers called.")

        # prepare query url
        @logger.info("Preparing query URL for get_all_customers.")
        _query_builder = Configuration.get_base_uri().clone
        _query_builder << '/customers'
        _query_url = APIHelper.clean_url _query_builder

        # prepare headers
        @logger.info("Preparing headers for get_all_customers.")
        _headers = {
          'accept' => 'application/json'
        }

        # prepare and execute HttpRequest
        @logger.info('Preparing and executing HttpRequest for get_all_customers.')
        _request = @http_client.get _query_url, headers: _headers
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_all_customers')
        validate_response(_context)

        # return appropriate response type
        @logger.info("Returning response for get_all_customers.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        return decoded.map{|element| CustomerModel.from_hash(element)}

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end
  end
end
