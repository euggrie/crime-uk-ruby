module CrimeUk
  module Request
    # RESTful API requests for the street level crimes endpoints.
    class NoLocation < Base
      # Retrieve a list of crimes that could not be mapped to a location.
      # 
      #   GET /api/crimes-no-location?category=all-crime&force=leicestershire&date=2017-02
      def self.show(force, cat: 'all-crimes', year: '', month: '')
        get("crimes-no-location?category=#{category}&force=#{force}&date=#{year}-#{month}")
      end
    end
  end
end
