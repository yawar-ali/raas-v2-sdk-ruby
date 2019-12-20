# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Raas
  class AccountsController < BaseController
    @@instance = AccountsController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Gets a list of accounts for a given customer
    # @param [String] customer_identifier Required parameter: Customer Identifier
    # @return List of AccountSummaryModel response from the API call
    def get_accounts_by_customer(customer_identifier)
      begin
        @logger.info("get_accounts_by_customer called.")

        # validate required parameters
        @logger.info("Validating required parameters for get_accounts_by_customer.")
        validate_parameters({
          'customer_identifier' => customer_identifier
        })

        # prepare query url
        @logger.info("Preparing query URL for get_accounts_by_customer.")
        _query_builder = Configuration.get_base_uri().clone
        _query_builder << '/customers/{customerIdentifier}/accounts'
        _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
          'customerIdentifier' => customer_identifier
        }
        _query_url = APIHelper.clean_url _query_builder

        # prepare headers
        @logger.info("Preparing headers for get_accounts_by_customer.")
        _headers = {
          'accept' => 'application/json'
        }

        # prepare and execute HttpRequest
        @logger.info('Preparing and executing HttpRequest for get_accounts_by_customer.')
        _request = @http_client.get _query_url, headers: _headers
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_accounts_by_customer')
        validate_response(_context)

        # return appropriate response type
        @logger.info("Returning response for get_accounts_by_customer.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        return decoded.map{|element| AccountSummaryModel.from_hash(element)}

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # Get an account
    # @param [String] account_identifier Required parameter: Account Identifier
    # @return AccountModel response from the API call
    def get_account(account_identifier)
      begin
        @logger.info("get_account called.")

        # validate required parameters
        @logger.info("Validating required parameters for get_account.")
        validate_parameters({
          'account_identifier' => account_identifier
        })

        # prepare query url
        @logger.info("Preparing query URL for get_account.")
        _query_builder = Configuration.get_base_uri().clone
        _query_builder << '/accounts/{accountIdentifier}'
        _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
          'accountIdentifier' => account_identifier
        }
        _query_url = APIHelper.clean_url _query_builder

        # prepare headers
        @logger.info("Preparing headers for get_account.")
        _headers = {
          'accept' => 'application/json'
        }

        # prepare and execute HttpRequest
        @logger.info('Preparing and executing HttpRequest for get_account.')
        _request = @http_client.get _query_url, headers: _headers
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_account')
        validate_response(_context)

        # return appropriate response type
        @logger.info("Returning response for get_account.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        return AccountModel.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # Create an account under a given customer
    # @param [String] customer_identifier Required parameter: Customer Identifier
    # @param [CreateAccountRequestModel] body Required parameter: Request Body
    # @return AccountModel response from the API call
    def create_account(customer_identifier,
                       body)
      begin
        @logger.info("create_account called.")

        # validate required parameters
        @logger.info("Validating required parameters for create_account.")
        validate_parameters({
          'customer_identifier' => customer_identifier,
          'body' => body
        })

        # prepare query url
        @logger.info("Preparing query URL for create_account.")
        _query_builder = Configuration.get_base_uri().clone
        _query_builder << '/customers/{customerIdentifier}/accounts'
        _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
          'customerIdentifier' => customer_identifier
        }
        _query_url = APIHelper.clean_url _query_builder

        # prepare headers
        @logger.info("Preparing headers for create_account.")
        _headers = {
          'accept' => 'application/json',
          'content-type' => 'application/json; charset=utf-8'
        }

        # prepare and execute HttpRequest
        @logger.info('Preparing and executing HttpRequest for create_account.')
        _request = @http_client.post _query_url, headers: _headers, parameters: body.to_json
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'create_account')
        validate_response(_context)

        # return appropriate response type
        @logger.info("Returning response for create_account.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        return AccountModel.from_hash(decoded)

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end

    # Gets all accounts under the platform
    # @return List of AccountModel response from the API call
    def get_all_accounts
      begin
        @logger.info("get_all_accounts called.")

        # prepare query url
        @logger.info("Preparing query URL for get_all_accounts.")
        _query_builder = Configuration.get_base_uri().clone
        _query_builder << '/accounts'
        _query_url = APIHelper.clean_url _query_builder

        # prepare headers
        @logger.info("Preparing headers for get_all_accounts.")
        _headers = {
          'accept' => 'application/json'
        }

        # prepare and execute HttpRequest
        @logger.info('Preparing and executing HttpRequest for get_all_accounts.')
        _request = @http_client.get _query_url, headers: _headers
        BasicAuth.apply(_request)
        _context = execute_request(_request, name: 'get_all_accounts')
        validate_response(_context)

        # return appropriate response type
        @logger.info("Returning response for get_all_accounts.")
        decoded = APIHelper.json_deserialize(_context.response.raw_body)
        return decoded.map{|element| AccountModel.from_hash(element)}

      rescue Exception => e
        @logger.error(e)
        raise e
      end
    end
  end
end
