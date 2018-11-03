module CrimeUk
  class CrimeOutcome
    def self.for_crime_id(crime_id)
      Request::CrimeOutcome.find crime_id
    end
  end
end
