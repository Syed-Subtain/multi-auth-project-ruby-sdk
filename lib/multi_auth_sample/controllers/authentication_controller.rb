# multi_auth_sample
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MultiAuthSample
  # AuthenticationController
  class AuthenticationController < BaseController
    # TODO: type endpoint description here
    # @return [String] response from the API call
    def o_auth_bearer_token
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/auth/oauth2',
                                     Server::DEFAULT)
                   .auth(Single.new('OAuthBearerToken')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:deserialize_primitive_types))
                   .deserialize_into(proc do |response| response.to_s end)
                   .is_primitive_response(true))
        .execute
    end

    # TODO: type endpoint description here
    # @return [String] response from the API call
    def custom_authentication
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/auth/customAuthentication',
                                     Server::DEFAULT)
                   .auth(Single.new('CustomAuth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:deserialize_primitive_types))
                   .deserialize_into(proc do |response| response.to_s end)
                   .is_primitive_response(true))
        .execute
    end

    # TODO: type endpoint description here
    # @return [String] response from the API call
    def custom_query_or_header_authentication
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/auth/customQueryOrHeaderParam',
                                     Server::DEFAULT)
                   .auth(Or.new('apiKey', 'apiHeader')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:deserialize_primitive_types))
                   .deserialize_into(proc do |response| response.to_s end)
                   .is_primitive_response(true))
        .execute
    end

    # This endpoint tests or combinations of OAuth types
    # @return [String] response from the API call
    def o_auth_grant_types_or_combinations
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/oauth2/oauthOrCombination',
                                     Server::DEFAULT)
                   .auth(Or.new('OAuthCCG', 'OAuthBearerToken')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:deserialize_primitive_types))
                   .deserialize_into(proc do |response| response.to_s end)
                   .is_primitive_response(true))
        .execute
    end

    # This endpoint does not use auth.
    # @return [String] response from the API call
    def no_auth
      warn 'Endpoint no_auth in AuthenticationController is deprecated since v'\
           'ersion 0.0.1-alpha.    You should not use this method as it requir'\
           'es no auth and can bring security issues to the server and api cal'\
           'l itself!!'
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/auth/noAuth',
                                     Server::DEFAULT)
                   .query_param(new_parameter(true, key: 'array')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:deserialize_primitive_types))
                   .deserialize_into(proc do |response| response.to_s end)
                   .is_primitive_response(true))
        .execute
    end

    # TODO: type endpoint description here
    # @return [ServiceStatus] response from the API call
    def o_auth_client_credentials_grant
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/oauth2/non-auth-server/status',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('OAuthCCG')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ServiceStatus.method(:from_hash)))
        .execute
    end

    # TODO: type endpoint description here
    # @return [String] response from the API call
    def basic_auth_and_api_header_auth
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/auth/basicAndApiKeyAndApiHeader',
                                     Server::DEFAULT)
                   .auth(And.new('basicAuth', 'apiKey', 'apiHeader')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:deserialize_primitive_types))
                   .deserialize_into(proc do |response| response.to_s end)
                   .is_primitive_response(true))
        .execute
    end

    # TODO: type endpoint description here
    # @return [User] response from the API call
    def o_auth_authorization_grant
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/oauth2/non-auth-server/user',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(And.new('OAuthACG', 'OAuthROPCG')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(User.method(:from_hash)))
        .execute
    end

    # This endpoint uses globally applied auth which is a hypothetical scneraio
    # but covers the worst case.
    # @return [String] response from the API call
    def multiple_auth_combination
      warn 'Endpoint multiple_auth_combination in AuthenticationController is '\
           'deprecated'
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/auth/multipleAuthCombination',
                                     Server::DEFAULT)
                   .auth(Or.new('CustomAuth', 'OAuthBearerToken', And.new('basicAuth', 'apiKey', 'apiHeader'))))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:deserialize_primitive_types))
                   .deserialize_into(proc do |response| response.to_s end)
                   .is_primitive_response(true))
        .execute
    end
  end
end
