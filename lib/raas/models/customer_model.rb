# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

require 'date'
module Raas
  class CustomerModel < BaseModel
    # Customer Identifier
    # @return [String]
    attr_accessor :customer_identifier

    # Display Name
    # @return [String]
    attr_accessor :display_name

    # Status
    # @return [String]
    attr_accessor :status

    # Date Created
    # @return [DateTime]
    attr_accessor :created_at

    # Accounts
    # @return [List of AccountSummaryModel]
    attr_accessor :accounts

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["customer_identifier"] = "customerIdentifier"
        @_hash["display_name"] = "displayName"
        @_hash["status"] = "status"
        @_hash["created_at"] = "createdAt"
        @_hash["accounts"] = "accounts"
      end
      @_hash
    end

    def initialize(customer_identifier = nil,
                   display_name = nil,
                   status = nil,
                   created_at = nil,
                   accounts = nil)
      @customer_identifier = customer_identifier
      @display_name = display_name
      @status = status
      @created_at = created_at
      @accounts = accounts
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      customer_identifier = hash['customerIdentifier']
      display_name = hash['displayName']
      status = hash['status']
      created_at = DateTime.rfc3339(hash['createdAt']) if hash['createdAt']
      # Parameter is an array, so we need to iterate through it
      accounts = nil
      if hash['accounts'] != nil
        accounts = Array.new
        hash['accounts'].each{|structure| accounts << (AccountSummaryModel.from_hash(structure) if structure)}
      end

      # Create object from extracted values
      CustomerModel.new(customer_identifier,
                        display_name,
                        status,
                        created_at,
                        accounts)
    end
  end
end
