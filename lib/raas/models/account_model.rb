# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

require 'date'
module Raas
  class AccountModel < BaseModel
    # Account Identifier
    # @return [String]
    attr_accessor :account_identifier

    # Display Name
    # @return [String]
    attr_accessor :display_name

    # Currency Code
    # @return [String]
    attr_accessor :currency_code

    # Current Balance
    # @return [Float]
    attr_accessor :current_balance

    # Date Created
    # @return [DateTime]
    attr_accessor :created_at

    # Status
    # @return [String]
    attr_accessor :status

    # Contact Email
    # @return [String]
    attr_accessor :contact_email

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["account_identifier"] = "accountIdentifier"
        @_hash["display_name"] = "displayName"
        @_hash["currency_code"] = "currencyCode"
        @_hash["current_balance"] = "currentBalance"
        @_hash["created_at"] = "createdAt"
        @_hash["status"] = "status"
        @_hash["contact_email"] = "contactEmail"
      end
      @_hash
    end

    def initialize(account_identifier = nil,
                   display_name = nil,
                   currency_code = 'USD',
                   current_balance = nil,
                   created_at = nil,
                   status = nil,
                   contact_email = nil)
      @account_identifier = account_identifier
      @display_name = display_name
      @currency_code = currency_code
      @current_balance = current_balance
      @created_at = created_at
      @status = status
      @contact_email = contact_email
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      account_identifier = hash['accountIdentifier']
      display_name = hash['displayName']
      currency_code = hash['currencyCode'] ||= 'USD'
      current_balance = hash['currentBalance']
      created_at = DateTime.rfc3339(hash['createdAt']) if hash['createdAt']
      status = hash['status']
      contact_email = hash['contactEmail']

      # Create object from extracted values
      AccountModel.new(account_identifier,
                       display_name,
                       currency_code,
                       current_balance,
                       created_at,
                       status,
                       contact_email)
    end
  end
end
