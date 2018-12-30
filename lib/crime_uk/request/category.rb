module CrimeUk
  module Request
    # RESTful API requests for the category endpoints.
    class Category < Base
      # Retrieve crime category list for a given year/month.
      #
      #   GET /api/crime-categories?date=2011-08
      def self.show(year, month)
        get("crime-categories?date=#{year}-#{month}")
      end
    end
  end
end
