module CrimeUk
  module Request
    # RESTful API requests for the street level crimes endpoints.
    class StreetLevel < Base
      # Retrieve Crimes at street-level within a 1 mile radius of a single point.
      #
      #   GET /api/crimes-street/all-crime?lat=52.629729&lng=-1.131592&date=2017-01
      def self.show(cat, lat, lng, year, month)
        get("crimes-street/#{cat}?lat=#{lat}&lng=#{lng}&date=#{year}-#{month}")
      end

      # Retrieve Crimes at street-level within within a custom area.
      #
      #  GET /api/crimes-street/all-crime?poly=52.268,0.543:52.794,0.238:52.130,0.478&date=2017-01
      def self.list(cat, poly, year, month)
        get("crimes-street/#{cat}?poly=#{poly}&date=#{year}-#{month}")
      end
    end
  end
end
