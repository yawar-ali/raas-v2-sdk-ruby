# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Raas
  class HttpContext
    attr_accessor :request, :response

    # The constructor.
    # @param [HttpRequest] An HttpRequest object representing the HTTP request.
    # @param [HttpResponse] An HttpResponse object representing the HTTP response.
    def initialize(request, response)
      @request = request
      @response = response
    end
  end
end
