# multi_auth_sample
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MultiAuthSample
  # OAuth 2 Authorization endpoint response
  class OAuthToken < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Access token
    # @return [String]
    attr_accessor :access_token

    # Type of access token
    # @return [String]
    attr_accessor :token_type

    # Time in seconds before the access token expires
    # @return [Integer]
    attr_accessor :expires_in

    # List of scopes granted
    # This is a space-delimited list of strings.
    # @return [String]
    attr_accessor :scope

    # Time of token expiry as unix timestamp (UTC)
    # @return [Integer]
    attr_accessor :expiry

    # Refresh token
    # Used to get a new access token when it expires.
    # @return [String]
    attr_accessor :refresh_token

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['access_token'] = 'access_token'
      @_hash['token_type'] = 'token_type'
      @_hash['expires_in'] = 'expires_in'
      @_hash['scope'] = 'scope'
      @_hash['expiry'] = 'expiry'
      @_hash['refresh_token'] = 'refresh_token'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        expires_in
        scope
        expiry
        refresh_token
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(access_token = nil,
                   token_type = nil,
                   expires_in = SKIP,
                   scope = SKIP,
                   expiry = SKIP,
                   refresh_token = SKIP,
                   additional_properties = {})
      @access_token = access_token
      @token_type = token_type
      @expires_in = expires_in unless expires_in == SKIP
      @scope = scope unless scope == SKIP
      @expiry = expiry unless expiry == SKIP
      @refresh_token = refresh_token unless refresh_token == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      access_token = hash.key?('access_token') ? hash['access_token'] : nil
      token_type = hash.key?('token_type') ? hash['token_type'] : nil
      expires_in = hash.key?('expires_in') ? hash['expires_in'] : SKIP
      scope = hash.key?('scope') ? hash['scope'] : SKIP
      expiry = hash.key?('expiry') ? hash['expiry'] : SKIP
      refresh_token = hash.key?('refresh_token') ? hash['refresh_token'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      OAuthToken.new(access_token,
                     token_type,
                     expires_in,
                     scope,
                     expiry,
                     refresh_token,
                     hash)
    end
  end
end
