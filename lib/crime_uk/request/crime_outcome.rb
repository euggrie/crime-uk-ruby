module CrimeUk
  module Request
    # RESTful API requests for a specific crime outcome.
    class CrimeOutcome < Base
      # Retrieve the outcomes (case history) for the specified crime.
      # 
      # GET /api/outcomes-for-crime/590d68b69228a9ff95b675bb4af591b38de561aa03129dc09a03ef34f537588c
      # @param [String] crime_id unique 64-character identifier, as returned by other API methods.
      # @return [[Hash]] A specific criome outcome.
      def self.find(crime_id)
        get("/outcomes-for-crime/#{crime_id}")
      end
    end
  end
end
