module CrimeUk
  module Request
    # Base class for all API requests.
    #
    # Uses the Faraday library for HTTP interactions.
    class Base
      class << self
        # Access a resource via HTTP GET.
        #
        # @param [String] path Desired server path.
        # @raise [Errors::Error] Raised if the server returns a non 2xx error code.
        # @return [Object] Parsed server response body.
        def get(path)
          action :get, path
        end

        private

        def action(verb, path, payload = nil)
          params = [path, payload&.to_json].compact
          response = CrimeUk::Response.new connection.send verb, *params
          response.body
        end

        def connection
          Faraday.new(url: base_url) do |faraday|
            faraday.request :url_encoded
            faraday.adapter Faraday.default_adapter
            faraday.headers['Content-Type']  = 'application/json'
            faraday.path_prefix              = '/api/'
          end
        end

        def base_url
          'https://data.police.uk'
        end

        def credentials
          # currently not needed
        end
      end
    end
  end
end
