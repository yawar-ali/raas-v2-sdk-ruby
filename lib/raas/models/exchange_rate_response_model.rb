# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Raas
  class ExchangeRateResponseModel < BaseModel
    # Disclaimer
    # @return [String]
    attr_accessor :disclaimer

    # Exchange Rates
    # @return [List of ExchangeRateModel]
    attr_accessor :exchange_rates

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["disclaimer"] = "disclaimer"
        @_hash["exchange_rates"] = "exchangeRates"
      end
      @_hash
    end

    def initialize(disclaimer = nil,
                   exchange_rates = nil)
      @disclaimer = disclaimer
      @exchange_rates = exchange_rates
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      disclaimer = hash['disclaimer']
      # Parameter is an array, so we need to iterate through it
      exchange_rates = nil
      if hash['exchangeRates'] != nil
        exchange_rates = Array.new
        hash['exchangeRates'].each{|structure| exchange_rates << (ExchangeRateModel.from_hash(structure) if structure)}
      end

      # Create object from extracted values
      ExchangeRateResponseModel.new(disclaimer,
                                    exchange_rates)
    end
  end
end
