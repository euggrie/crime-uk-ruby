module CrimeUk
  class StreetLevelOutcome
    def self.at_location_id(location_id, year: '', month: '')
      Request::StreetLevelOutcome.find location_id, year.to_s, month.to_s
    end

    def self.at_location_point(lat, lng, year: '', month: '')
      Request::StreetLevelOutcome.show cat, lat.to_s, lng.to_s, year.to_s, month.to_s
    end

    def self.at_custom_area(poly, year: '', month: '')
      Request::StreetLevelOutcome.list poly.to_s, year.to_s, month.to_s
    end
  end
end
