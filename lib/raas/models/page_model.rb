# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Raas
  class PageModel < BaseModel
    # Page Number
    # @return [Integer]
    attr_accessor :number

    # Elements per page
    # @return [Integer]
    attr_accessor :elements_per_block

    # Result Count
    # @return [Integer]
    attr_accessor :result_count

    # Total Count
    # @return [Integer]
    attr_accessor :total_count

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["number"] = "number"
        @_hash["elements_per_block"] = "elementsPerBlock"
        @_hash["result_count"] = "resultCount"
        @_hash["total_count"] = "totalCount"
      end
      @_hash
    end

    def initialize(number = nil,
                   elements_per_block = nil,
                   result_count = nil,
                   total_count = nil)
      @number = number
      @elements_per_block = elements_per_block
      @result_count = result_count
      @total_count = total_count
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      number = hash['number']
      elements_per_block = hash['elementsPerBlock']
      result_count = hash['resultCount']
      total_count = hash['totalCount']

      # Create object from extracted values
      PageModel.new(number,
                    elements_per_block,
                    result_count,
                    total_count)
    end
  end
end
