# multi_auth_sample
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MultiAuthSample
  # Utility class for custom header authorization.
  class ApiHeader < CoreLibrary::HeaderAuth
    # Display error message on occurrence of authentication failure.
    # @returns [String] The oAuth error message.
    def error_message
      'ApiHeader: token or api_key is undefined.'
    end

    # Initialization constructor.
    def initialize(api_header_credentials)
      auth_params = {}
      auth_params['token'] = api_header_credentials.token unless
        api_header_credentials.nil? || api_header_credentials.token.nil?
      auth_params['api-key'] = api_header_credentials.api_key unless
        api_header_credentials.nil? || api_header_credentials.api_key.nil?

      super auth_params
    end
  end

  # Data class for ApiHeaderCredentials.
  # Data class for ApiHeaderCredentials.
  class ApiHeaderCredentials
    attr_reader :token, :api_key

    def initialize(token:, api_key:)
      raise ArgumentError, 'token cannot be nil' if token.nil?
      raise ArgumentError, 'api_key cannot be nil' if api_key.nil?

      @token = token
      @api_key = api_key
    end

    def clone_with(token: nil, api_key: nil)
      token ||= self.token
      api_key ||= self.api_key

      ApiHeaderCredentials.new(token: token, api_key: api_key)
    end
  end
end
