module CrimeUk
  module Request
    # RESTful API requests for the street level crimes endpoints.
    class AtLocation < Base
      # Retrieve just the crimes which occurred at the specified location,
      # rather than those within a radius. If given latitude and longitude, finds the nearest
      # pre-defined location and returns the crimes which occurred there.
      #
      #   GET /api/crimes-at-location?date=2017-02&location_id=884227
      def self.find(location_id, year, month)
        get("crimes-at-location?date=#{year}-#{month}&location_id=#{location_id}")
      end

      #  GET /api/crimes-at-location?date=2017-02&lat=52.629729&lng=-1.131592
      def self.show(lat, lng, year, month)
        get("crimes-at-location?date=#{year}-#{month}&lat=#{lat}&lng=#{lng}")
      end
    end
  end
end
