# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Raas
  class BaseController
    attr_accessor :http_client, :http_call_back

    @@http_client = FaradayClient.new(timeout: 15)

    @@global_headers = {
      'user-agent' => 'TangoCardv2NGSDK'
    }

    def initialize(http_client: nil, http_call_back: nil)
      @http_client = http_client ||= @@http_client
      @http_call_back = http_call_back
      @logger = Logging.logger[self]
      @logger.info("Instantiated controller class.")
    end

    def validate_parameters(args)
      args.each do |_name, value|
        if value.nil?
          raise ArgumentError.new 'Required parameter #{name} cannot be nil.'
        end
      end
    end

    def execute_request(request, binary: false, name: nil)
      @logger.info("Calling the on_before_request method of http_call_back for #{name}.") if @http_call_back
      @http_call_back.on_before_request(request) if @http_call_back

      @logger.info("Merging global headers with endpoint headers for #{name}.")
      APIHelper.clean_hash(request.headers)
      request.headers = @@global_headers.clone.merge(request.headers)

      @logger.debug("Raw request for #{name} is: #{request.inspect}")
      response = binary ? @http_client.execute_as_binary(request) : @http_client.execute_as_string(request)
      @logger.debug("Raw response for #{name} is: #{response.inspect}")
      @logger.info("Wrapping request and response in a context object for #{name}.")
      context = HttpContext.new(request, response)

      @logger.info("Calling on_after_response method of http_call_back for #{name}.") if @http_call_back
      @http_call_back.on_after_response(context) if @http_call_back

      return context
    end

    def validate_response(context)
      unless (200...208).include? context.response.status_code
        @logger.error(
          "Raising error due to invalid response:\n" +
          "  #{JSON.parse(context.response.raw_body)}"
        )

        @logger.error(
          "Original request:\n" +
          "  URL: #{context.request.query_url}\n" +
          "  HTTP Method: #{context.request.http_method}\n" +
          "  Headers: #{context.request.headers}\n" +
          "  Parameters: #{context.request.parameters}"
        )
      end

      if context.response.status_code == 400
        raise RaasClientException.new 'Bad Request', context
      elsif context.response.status_code == 401
        raise RaasGenericException.new 'Unauthorized - Invalid Credentials', context
      elsif context.response.status_code == 403
        raise RaasClientException.new 'Forbidden', context
      elsif context.response.status_code == 404
        raise RaasGenericException.new 'Not Found', context
      elsif context.response.status_code == 409
        raise RaasClientException.new 'Conflict', context
      elsif context.response.status_code == 500
        raise RaasServerException.new 'Internal Server Error - Retry Later', context
      elsif context.response.status_code == 503
        raise RaasServerException.new 'Service Unavailable - Retry Later', context
      elsif !context.response.status_code.between?(200, 208) #[200,208] = HTTP OK
        raise RaasGenericException.new 'API Error', context
      end
    end
  end
end
