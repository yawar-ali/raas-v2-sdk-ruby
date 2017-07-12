# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Raas
  class CatalogModel < BaseModel
    # The name of your catalog
    # @return [String]
    attr_accessor :catalog_name

    # The brands in your catalog
    # @return [List of BrandModel]
    attr_accessor :brands

    # A mapping from model property names to API property names
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash["catalog_name"] = "catalogName"
        @_hash["brands"] = "brands"
      end
      @_hash
    end

    def initialize(catalog_name = nil,
                   brands = nil)
      @catalog_name = catalog_name
      @brands = brands
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash
      catalog_name = hash['catalogName']
      # Parameter is an array, so we need to iterate through it
      brands = nil
      if hash['brands'] != nil
        brands = Array.new
        hash['brands'].each{|structure| brands << (BrandModel.from_hash(structure) if structure)}
      end

      # Create object from extracted values
      CatalogModel.new(catalog_name,
                       brands)
    end
  end
end
