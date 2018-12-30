module CrimeUk
  # Behaviours and exceptions for recoverable errors.
  module Errors
    # Test server response and raise appropriate error if an error has been returned.
    #
    # @raise [Error] Appropriate error for server response code.
    # @return [nil] Returns nil on success
    def self.raise_unless_successful(status, body)
      return if status.to_s.start_with? '2' # 2xx

      err = errors[status]
      message = body.fetch('errors').first.fetch('detail')
      raise err, (message || status.to_s) if err

      raise Error, "Error #{status}: #{message}"
    end

    # CrimeUk base error
    class Error < StandardError; end

    # Raised when an entity cannot be located using the unique id specified.
    #
    # Corresponds to a HTTP 404 error.
    class NotFound < Error; end

    # Raised usually when data validations fail on operations that mutate state.
    #
    # Corresponds to a HTTP 422 error.
    class UnprocessableEntity < Error; end

    class << self
      private

      def errors
        {
          401 => CrimeUk::Errors::Unauthorized,
          404 => CrimeUk::Errors::NotFound,
          422 => CrimeUk::Errors::UnprocessableEntity
        }
      end
    end
  end
end
