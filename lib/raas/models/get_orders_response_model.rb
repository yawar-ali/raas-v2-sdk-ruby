# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Raas
  class GetOrdersResponseModel < BaseModel
    # Pagination information
    # @return [PageModel]
    attr_accessor :page

    # An array of orders
    # @return [List of OrderModel]
    attr_accessor :orders

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["page"] = "page"
        @_hash["orders"] = "orders"
      end
      @_hash
    end

    def initialize(page = nil,
                   orders = nil)
      @page = page
      @orders = orders
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      page = PageModel.from_hash(hash['page']) if hash['page']
      # Parameter is an array, so we need to iterate through it
      orders = nil
      if hash['orders'] != nil
        orders = Array.new
        hash['orders'].each{|structure| orders << (OrderModel.from_hash(structure) if structure)}
      end

      # Create object from extracted values
      GetOrdersResponseModel.new(page,
                                 orders)
    end
  end
end
