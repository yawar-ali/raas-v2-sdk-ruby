# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Raas
  class CreateCustomerRequestModel < BaseModel
    # Customer Identifier
    # @return [String]
    attr_accessor :customer_identifier

    # Display Name
    # @return [String]
    attr_accessor :display_name

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["customer_identifier"] = "customerIdentifier"
        @_hash["display_name"] = "displayName"
      end
      @_hash
    end

    def initialize(customer_identifier = nil,
                   display_name = nil)
      @customer_identifier = customer_identifier
      @display_name = display_name
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      customer_identifier = hash['customerIdentifier']
      display_name = hash['displayName']

      # Create object from extracted values
      CreateCustomerRequestModel.new(customer_identifier,
                                     display_name)
    end
  end
end
