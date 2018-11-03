module CrimeUk
  class NoLocation
    def self.by_force(force, cat, year, month)
      Request::NoLocation.show force, cat, year.to_s, month.to_s
    end
  end
end
