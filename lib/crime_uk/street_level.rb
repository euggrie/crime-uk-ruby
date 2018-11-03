module CrimeUk
  class StreetLevel
    def self.at_location_point(lat, lng, cat: 'all-crimes', year: '', month: '')
      Request::StreetLevel.show cat, lat.to_s, lng.to_s, year.to_s, month.to_s
    end

    def self.at_custom_area(poly, cat: 'all-crimes', year: '', month: '')
      Request::StreetLevel.list cat, poly, year.to_s, month.to_s
    end
  end
end
