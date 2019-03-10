require 'svc_party'

module YourlCli

  # Client for interfacing with yourl API
  class Client < SvcParty::Client

    def initialize(api_key)
      super('api.yourl.com')
      @api_key = api_key
    end

    def create_link(link_url)
      with_post('/api/links', url: link_url) do |response|
        return response
      end
    end

    def get_headers(_headers)
      {
        'Content-Type' => 'application/json'
      }
    end

  end

end

