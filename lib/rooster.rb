require "rooster/engine"

require_relative 'rooster/authentication/auth'
require_relative 'rooster/configuration'

require "devise"
require "haml"

module Rooster
  class << self
    
    def configure
      yield configuration
    end

    def configuration
      @configuration ||= Configuration.new
    end
    alias :config :configuration

  end
end
