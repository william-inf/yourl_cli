require 'yourl_cli/version'
require 'logger'
require 'json'

module YourlCli
  class << self
    attr_writer :logger

    def logger
      @logger ||= Logger.new($stdout).tap do |log|
        log.progname = name
      end
    end
  end
end
