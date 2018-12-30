module CrimeUk
  module Request
    # RESTful API requests for the street level crimes endpoints.
    class StreetLevelOutcome < Base
      # Retrieve Crimes Outcomes at street-level at a specific location.
      #
      #   GET /api/outcomes-at-location?date=2017-01&location_id=883498
      def self.find(location_id, year, month)
        get("outcomes-at-location?date=#{year}-#{month}&location_id=#{location_id}")
      end

      # Retrieve Crimes Outcomes at street-level within a 1 mile radius of a single point.
      #
      #   GET /api/outcomes-at-location?date=2017-01&lat=52.629729&lng=-1.131592
      def self.show(lat, lng, year, month)
        get("outcomes-at-location?date=#{year}-#{month}&lat=#{lat}&lng=#{lng}")
      end

      # Retrieve Crimes at street-level within within a custom area.
      #
      #  GET /api/outcomes-at-location?date=2017-01&poly=52.268,0.543:52.794,0.238:52.130,0.478
      # The poly parameter is formatted in lat/lng pairs, separated by colons:
      # [lat],[lng]:[lat],[lng]:[lat],[lng]
      def self.list(poly, year, month)
        get("outcomes-at-location?date=#{year}-#{month}&poly=#{poly}")
      end
    end
  end
end
