# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Raas
  class OrdersController < BaseController
    @@instance = OrdersController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # TODO: type endpoint description here
    # @param [CreateOrderRequestModel] body Required parameter: Example:
    # @return OrderModel response from the API call
    def create_order(body)
      begin
        @logger.info("create_order called.")

        # validate required parameters
        @logger.info("Validating required parameters for create_order.")
        validate_parameters({
          'body' => body
        })

        # prepare query url
        @logger.info("Preparing query URL for create_order.")
        _query_builder = Configuration.get_base_uri().clone
        _query_builder << '/orders'
        _query_url = APIHelper.clean_url _query_builder

        # prepare headers
        @logger.info("Preparing headers for create_order.")
        _headers = {
          'accept' => 'application/json',
          'content-type' => 'application/json; charset=utf-8'
        }

        # prepare and execute HttpRequest
        @logger.info('Preparing and executing HttpRequest for create_order.')
        _request = @http_client.post _query_url, headers: _headers, parameters: body.to_json
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'create_order')
        validate_response(_context)

        # return appropriate response type
        @logger.info("Returning response for create_order.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        return OrderModel.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # TODO: type endpoint description here
    # @param [String] reference_order_id Required parameter: Reference Order ID
    # @return OrderModel response from the API call
    def get_order(reference_order_id)
      begin
        @logger.info("get_order called.")

        # validate required parameters
        @logger.info("Validating required parameters for get_order.")
        validate_parameters({
          'reference_order_id' => reference_order_id
        })

        # prepare query url
        @logger.info("Preparing query URL for get_order.")
        _query_builder = Configuration.get_base_uri()
        _query_builder << '/orders/{referenceOrderID}'
        _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
          'referenceOrderID' => reference_order_id
        }
        _query_url = APIHelper.clean_url _query_builder

        # prepare headers
        @logger.info("Preparing headers for get_order.")
        _headers = {
          'accept' => 'application/json'
        }

        # prepare and execute HttpRequest
        @logger.info('Preparing and executing HttpRequest for get_order.')
        _request = @http_client.get _query_url, headers: _headers
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_order')
        validate_response(_context)

        # return appropriate response type
        @logger.info("Returning response for get_order.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        return OrderModel.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # TODO: type endpoint description here
    # @param [String] reference_order_id Required parameter: Example:
    # @return ResendOrderResponseModel response from the API call
    def create_resend_order(reference_order_id)
      begin
        @logger.info("create_resend_order called.")

        # validate required parameters
        @logger.info("Validating required parameters for create_resend_order.")
        validate_parameters({
          'reference_order_id' => reference_order_id
        })

        # prepare query url
        @logger.info("Preparing query URL for create_resend_order.")
        _query_builder = Configuration.get_base_uri()
        _query_builder << '/orders/{referenceOrderID}/resends'
        _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
          'referenceOrderID' => reference_order_id
        }
        _query_url = APIHelper.clean_url _query_builder

        # prepare headers
        @logger.info("Preparing headers for create_resend_order.")
        _headers = {
          'accept' => 'application/json'
        }

        # prepare and execute HttpRequest
        @logger.info('Preparing and executing HttpRequest for create_resend_order.')
        _request = @http_client.post _query_url, headers: _headers
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'create_resend_order')
        validate_response(_context)

        # return appropriate response type
        @logger.info("Returning response for create_resend_order.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        return ResendOrderResponseModel.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # TODO: type endpoint description here
    # @param [String] account_identifier Optional parameter: Example:
    # @param [String] customer_identifier Optional parameter: Example:
    # @param [String] external_ref_id Optional parameter: Example:
    # @param [DateTime] start_date Optional parameter: Example:
    # @param [DateTime] end_date Optional parameter: Example:
    # @param [Integer] elements_per_block Optional parameter: Example:
    # @param [Integer] page Optional parameter: Example:
    # @return GetOrdersResponseModel response from the API call
    def get_orders(options = Hash.new)
      begin
        @logger.info("get_orders called.")

        # prepare query url
        @logger.info("Preparing query URL for get_orders.")
        _query_builder = Configuration.get_base_uri()
        _query_builder << '/orders'
        _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
          'accountIdentifier' => options['account_identifier'],
          'customerIdentifier' => options['customer_identifier'],
          'externalRefID' => options['external_ref_id'],
          'startDate' => options['start_date'],
          'endDate' => options['end_date'],
          'elementsPerBlock' => options['elements_per_block'],
          'page' => options['page']
        }, array_serialization: Configuration.array_serialization
        _query_url = APIHelper.clean_url _query_builder

        # prepare headers
        @logger.info("Preparing headers for get_orders.")
        _headers = {
          'accept' => 'application/json'
        }

        # prepare and execute HttpRequest
        @logger.info('Preparing and executing HttpRequest for get_orders.')
        _request = @http_client.get _query_url, headers: _headers
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_orders')
        validate_response(_context)

        # return appropriate response type
        @logger.info("Returning response for get_orders.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        return GetOrdersResponseModel.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end
  end
end
