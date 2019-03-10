module YourlCli

  class APIKey

    CREDS_FILE_LOCATION = '/tmp/.yourl_creds'.freeze

    class << self
      def save_api_key(api_key)
        File.open(CREDS_FILE_LOCATION, 'w') do |file|
          file.write({ api_key: api_key }.to_json)
        end

        new
      end
    end

    attr_reader :api_key

    def initialize
      @api_key = retrieve_api_key
    end

    def valid_api_key?
      true
    end

    private

    def retrieve_api_key
      unless File.exist?(CREDS_FILE_LOCATION)
        raise 'Missing credential file - has set up been run?'
      end

      creds = JSON.parse(File.read(CREDS_FILE_LOCATION))
      unless creds.key? 'api_key'
        raise 'Missing API key from credential file - rerun set up'
      end

      creds['api_key']
    rescue StandardError => ex
      YourlCli.logger.error(ex.message)
      raise ex
    end
  end
end
