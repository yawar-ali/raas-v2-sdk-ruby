# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Raas
  class CurrencyBreakdownModel < BaseModel
    # Currency Code
    # @return [String]
    attr_accessor :currency_code

    # Exchange Rate
    # @return [Float]
    attr_accessor :exchange_rate

    # Fee
    # @return [Float]
    attr_accessor :fee

    # Total
    # @return [Float]
    attr_accessor :total

    # Value
    # @return [Float]
    attr_accessor :value

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["currency_code"] = "currencyCode"
        @_hash["exchange_rate"] = "exchangeRate"
        @_hash["fee"] = "fee"
        @_hash["total"] = "total"
        @_hash["value"] = "value"
      end
      @_hash
    end

    def initialize(currency_code = nil,
                   exchange_rate = nil,
                   fee = nil,
                   total = nil,
                   value = nil)
      @currency_code = currency_code
      @exchange_rate = exchange_rate
      @fee = fee
      @total = total
      @value = value
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      currency_code = hash['currencyCode']
      exchange_rate = hash['exchangeRate']
      fee = hash['fee']
      total = hash['total']
      value = hash['value']

      # Create object from extracted values
      CurrencyBreakdownModel.new(currency_code,
                                 exchange_rate,
                                 fee,
                                 total,
                                 value)
    end
  end
end
