# This file was automatically generated for Tango Card, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module Raas

  Logging.logger.root.appenders = Logging.appenders.stdout
  Logging.logger.root.level = :info

  class Configuration
    # Set the array parameter serialization method
    # (allowed: indexed, unindexed, plain, csv, tsv, psv)
    @array_serialization = 'indexed'

    # An enum for SDK environments
    class Environment
      #SANDBOX: Sandbox (Fake) Environment
      #PRODUCTION: Production (Live) Environment
      #QA: Tango Card Internal Use Only
      #GAMMA: Tango Card Internal Use Only
      #LOCAL: Tango Card Internal Use Only
      ENVIRONMENT = [SANDBOX = 0, PRODUCTION = 1, QA = 2, GAMMA = 3, LOCAL = 4]
    end

    # An enum for API servers
    class Server
      SERVER = [DEFAULT = 0]
    end

    # The environment in which the SDK is running
    @environment = Environment::SANDBOX

    # RaaS v2 API Platform Name
    @platform_name = 'QAPlatform2'

    # RaaS v2 API Platform Key
    @platform_key = 'apYPfT6HNONpDRUj3CLGWYt7gvIHONpDRUYPfT6Hj'

    # All the environments the SDK can run in
    @environments = {
      Environment::SANDBOX => {
        Server::DEFAULT => 'https://integration-api.tangocard.com/raas/v2',
      },
      Environment::PRODUCTION => {
        Server::DEFAULT => 'https://api.tangocard.com/raas/v2',
      },
      Environment::QA => {
        Server::DEFAULT => 'https://qa-api.tangocard.com/raas/v2',
      },
      Environment::GAMMA => {
        Server::DEFAULT => 'https://gamma-api.tangocard.com/raas/v2',
      },
      Environment::LOCAL => {
        Server::DEFAULT => 'http://raastango.cc:8080/v2',
      },
    }.freeze

    # Generates the appropriate base URI for the environment and the server.
    # @param [Configuration::Server] The server enum for which the base URI is required.
    # @return [String] The base URI.
    def self.get_base_uri(server = Server::DEFAULT)
      environments[environment][server]
    end

    # The attribute accessors for public properties
    class << self
      attr_accessor :array_serialization
      attr_accessor :environment
      attr_accessor :environments
      attr_accessor :platform_name
      attr_accessor :platform_key
    end
  end
end
