module CrimeUk
  class AtLocation
    def self.at_location_id(location_id, year, month)
      Request::AtLocation.find location_id, year.to_s, month.to_s
    end

    def self.at_location_point(lat, lng, year, month)
      Request::AtLocation.show lat.to_s, lng.to_s, year.to_s, month.to_s
    end
  end
end
