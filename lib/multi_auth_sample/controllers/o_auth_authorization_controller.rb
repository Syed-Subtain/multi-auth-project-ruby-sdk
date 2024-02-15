# multi_auth_sample
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MultiAuthSample
  # OAuthAuthorizationController
  class OAuthAuthorizationController < BaseController
    # Create a new OAuth 2 token.
    # @param [String] authorization Required parameter: Authorization header in
    # Basic auth format
    # @param [String] scope Optional parameter: Requested scopes as a
    # space-delimited list.
    # @param [Hash] _field_parameters Additional optional form parameters are
    # supported by this endpoint.
    # @return [OAuthToken] response from the API call
    def request_token_o_auth_ccg(authorization,
                                 scope: nil,
                                 _field_parameters: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/request_token',
                                     Server::AUTH)
                   .form_param(new_parameter('client_credentials', key: 'grant_type'))
                   .header_param(new_parameter(authorization, key: 'Authorization'))
                   .form_param(new_parameter(scope, key: 'scope'))
                   .header_param(new_parameter('application/x-www-form-urlencoded', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .additional_form_params(_field_parameters))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(OAuthToken.method(:from_hash))
                   .local_error('400',
                                'OAuth 2 provider returned an error.',
                                OAuthProviderException)
                   .local_error('401',
                                'OAuth 2 provider says client authentication failed.',
                                OAuthProviderException))
        .execute
    end

    # Create a new OAuth 2 token.
    # @param [String] authorization Required parameter: Authorization header in
    # Basic auth format
    # @param [String] code Required parameter: Authorization Code
    # @param [String] redirect_uri Required parameter: Redirect Uri
    # @param [Hash] _field_parameters Additional optional form parameters are
    # supported by this endpoint.
    # @return [OAuthToken] response from the API call
    def request_token_o_auth_acg(authorization,
                                 code,
                                 redirect_uri,
                                 _field_parameters: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/oauth2/non-auth-server/token',
                                     Server::DEFAULT)
                   .form_param(new_parameter('authorization_code', key: 'grant_type'))
                   .header_param(new_parameter(authorization, key: 'Authorization'))
                   .form_param(new_parameter(code, key: 'code'))
                   .form_param(new_parameter(redirect_uri, key: 'redirect_uri'))
                   .header_param(new_parameter('application/x-www-form-urlencoded', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .additional_form_params(_field_parameters))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(OAuthToken.method(:from_hash))
                   .local_error('400',
                                'OAuth 2 provider returned an error.',
                                OAuthProviderException)
                   .local_error('401',
                                'OAuth 2 provider says client authentication failed.',
                                OAuthProviderException))
        .execute
    end

    # Obtain a new access token using a refresh token
    # @param [String] authorization Required parameter: Authorization header in
    # Basic auth format
    # @param [String] refresh_token Required parameter: Refresh token
    # @param [String] scope Optional parameter: Requested scopes as a
    # space-delimited list.
    # @param [Hash] _field_parameters Additional optional form parameters are
    # supported by this endpoint.
    # @return [OAuthToken] response from the API call
    def refresh_token_o_auth_acg(authorization,
                                 refresh_token,
                                 scope: nil,
                                 _field_parameters: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/oauth2/non-auth-server/token',
                                     Server::DEFAULT)
                   .form_param(new_parameter('refresh_token', key: 'grant_type'))
                   .header_param(new_parameter(authorization, key: 'Authorization'))
                   .form_param(new_parameter(refresh_token, key: 'refresh_token'))
                   .form_param(new_parameter(scope, key: 'scope'))
                   .header_param(new_parameter('application/x-www-form-urlencoded', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .additional_form_params(_field_parameters))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(OAuthToken.method(:from_hash))
                   .local_error('400',
                                'OAuth 2 provider returned an error.',
                                OAuthProviderException)
                   .local_error('401',
                                'OAuth 2 provider says client authentication failed.',
                                OAuthProviderException))
        .execute
    end

    # Create a new OAuth 2 token.
    # @param [String] authorization Required parameter: Authorization header in
    # Basic auth format
    # @param [String] username Required parameter: Resource owner username
    # @param [String] password Required parameter: Resource owner password
    # @param [String] scope Optional parameter: Requested scopes as a
    # space-delimited list.
    # @param [Hash] _field_parameters Additional optional form parameters are
    # supported by this endpoint.
    # @return [OAuthToken] response from the API call
    def request_token_o_auth_ropcg(authorization,
                                   username,
                                   password,
                                   scope: nil,
                                   _field_parameters: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/oauth2/non-auth-server/token',
                                     Server::DEFAULT)
                   .form_param(new_parameter('password', key: 'grant_type'))
                   .header_param(new_parameter(authorization, key: 'Authorization'))
                   .form_param(new_parameter(username, key: 'username'))
                   .form_param(new_parameter(password, key: 'password'))
                   .form_param(new_parameter(scope, key: 'scope'))
                   .header_param(new_parameter('application/x-www-form-urlencoded', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .additional_form_params(_field_parameters))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(OAuthToken.method(:from_hash))
                   .local_error('400',
                                'OAuth 2 provider returned an error.',
                                OAuthProviderException)
                   .local_error('401',
                                'OAuth 2 provider says client authentication failed.',
                                OAuthProviderException))
        .execute
    end

    # Obtain a new access token using a refresh token
    # @param [String] authorization Required parameter: Authorization header in
    # Basic auth format
    # @param [String] refresh_token Required parameter: Refresh token
    # @param [String] scope Optional parameter: Requested scopes as a
    # space-delimited list.
    # @param [Hash] _field_parameters Additional optional form parameters are
    # supported by this endpoint.
    # @return [OAuthToken] response from the API call
    def refresh_token_o_auth_ropcg(authorization,
                                   refresh_token,
                                   scope: nil,
                                   _field_parameters: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/oauth2/non-auth-server/token',
                                     Server::DEFAULT)
                   .form_param(new_parameter('refresh_token', key: 'grant_type'))
                   .header_param(new_parameter(authorization, key: 'Authorization'))
                   .form_param(new_parameter(refresh_token, key: 'refresh_token'))
                   .form_param(new_parameter(scope, key: 'scope'))
                   .header_param(new_parameter('application/x-www-form-urlencoded', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .additional_form_params(_field_parameters))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(OAuthToken.method(:from_hash))
                   .local_error('400',
                                'OAuth 2 provider returned an error.',
                                OAuthProviderException)
                   .local_error('401',
                                'OAuth 2 provider says client authentication failed.',
                                OAuthProviderException))
        .execute
    end
  end
end