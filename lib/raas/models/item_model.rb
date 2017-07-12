# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

require 'date'
module Raas
  class ItemModel < BaseModel
    # UTID
    # @return [String]
    attr_accessor :utid

    # Reward Name
    # @return [String]
    attr_accessor :reward_name

    # Currency Code
    # @return [String]
    attr_accessor :currency_code

    # Status
    # @return [String]
    attr_accessor :status

    # Value Type (fixed/variable)
    # @return [String]
    attr_accessor :value_type

    # Reward Type
    # @return [String]
    attr_accessor :reward_type

    # Date Created
    # @return [DateTime]
    attr_accessor :created_date

    # Last Updated
    # @return [DateTime]
    attr_accessor :last_update_date

    # Countries
    # @return [List of String]
    attr_accessor :countries

    # Minimum Value (for variable value items)
    # @return [Float]
    attr_accessor :min_value

    # Maximum Value (for variable value items)
    # @return [Float]
    attr_accessor :max_value

    # Face Value
    # @return [Float]
    attr_accessor :face_value

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["utid"] = "utid"
        @_hash["reward_name"] = "rewardName"
        @_hash["currency_code"] = "currencyCode"
        @_hash["status"] = "status"
        @_hash["value_type"] = "valueType"
        @_hash["reward_type"] = "rewardType"
        @_hash["created_date"] = "createdDate"
        @_hash["last_update_date"] = "lastUpdateDate"
        @_hash["countries"] = "countries"
        @_hash["min_value"] = "minValue"
        @_hash["max_value"] = "maxValue"
        @_hash["face_value"] = "faceValue"
      end
      @_hash
    end

    def initialize(utid = nil,
                   reward_name = nil,
                   currency_code = nil,
                   status = nil,
                   value_type = nil,
                   reward_type = nil,
                   created_date = nil,
                   last_update_date = nil,
                   countries = nil,
                   min_value = nil,
                   max_value = nil,
                   face_value = nil)
      @utid = utid
      @reward_name = reward_name
      @currency_code = currency_code
      @status = status
      @value_type = value_type
      @reward_type = reward_type
      @created_date = created_date
      @last_update_date = last_update_date
      @countries = countries
      @min_value = min_value
      @max_value = max_value
      @face_value = face_value
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      utid = hash['utid']
      reward_name = hash['rewardName']
      currency_code = hash['currencyCode']
      status = hash['status']
      value_type = hash['valueType']
      reward_type = hash['rewardType']
      created_date = DateTime.rfc3339(hash['createdDate']) if hash['createdDate']
      last_update_date = DateTime.rfc3339(hash['lastUpdateDate']) if hash['lastUpdateDate']
      countries = hash['countries']
      min_value = hash['minValue']
      max_value = hash['maxValue']
      face_value = hash['faceValue']

      # Create object from extracted values
      ItemModel.new(utid,
                    reward_name,
                    currency_code,
                    status,
                    value_type,
                    reward_type,
                    created_date,
                    last_update_date,
                    countries,
                    min_value,
                    max_value,
                    face_value)
    end
  end
end
