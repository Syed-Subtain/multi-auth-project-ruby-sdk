# multi_auth_sample
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MultiAuthSample
  #  multi_auth_sample client class.
  class Client
    attr_reader :config, :auth_managers

    # Returns the configured authentication OAuthCCG instance.
    def o_auth_ccg
      @auth_managers['OAuthCCG']
    end

    # Returns the configured authentication OAuthACG instance.
    def o_auth_acg
      @auth_managers['OAuthACG']
    end

    # Returns the configured authentication OAuthROPCG instance.
    def o_auth_ropcg
      @auth_managers['OAuthROPCG']
    end

    # Access to authentication controller.
    # @return [AuthenticationController] Returns the controller instance.
    def authentication
      @authentication ||= AuthenticationController.new @global_configuration
    end

    # Access to o_auth_authorization controller.
    # @return [OAuthAuthorizationController] Returns the controller instance.
    def o_auth_authorization
      @o_auth_authorization ||= OAuthAuthorizationController.new @global_configuration
    end

    def initialize(
      connection: nil, adapter: :net_http_persistent, timeout: 60,
      max_retries: 0, retry_interval: 1, backoff_factor: 2,
      retry_statuses: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524],
      retry_methods: %i[get put], http_callback: nil,
      environment: Environment::TESTING, port: '80',
      suites: SuiteCodeEnum::HEARTS, basic_auth_credentials: nil,
      api_key_credentials: nil, api_header_credentials: nil,
      o_auth_ccg_credentials: nil, o_auth_acg_credentials: nil,
      o_auth_ropcg_credentials: nil, o_auth_bearer_token_credentials: nil,
      custom_auth_credentials: nil, access_token: '', config: nil
    )
      @config = if config.nil?
                  Configuration.new(
                    connection: connection, adapter: adapter, timeout: timeout,
                    max_retries: max_retries, retry_interval: retry_interval,
                    backoff_factor: backoff_factor,
                    retry_statuses: retry_statuses,
                    retry_methods: retry_methods, http_callback: http_callback,
                    environment: environment, port: port, suites: suites,
                    basic_auth_credentials: basic_auth_credentials,
                    api_key_credentials: api_key_credentials,
                    api_header_credentials: api_header_credentials,
                    o_auth_ccg_credentials: o_auth_ccg_credentials,
                    o_auth_acg_credentials: o_auth_acg_credentials,
                    o_auth_ropcg_credentials: o_auth_ropcg_credentials,
                    o_auth_bearer_token_credentials: o_auth_bearer_token_credentials,
                    custom_auth_credentials: custom_auth_credentials,
                    access_token: access_token
                  )
                else
                  config
                end

      @global_configuration = GlobalConfiguration.new(client_configuration: @config)
                                                 .base_uri_executor(@config.method(:get_base_uri))
                                                 .global_errors(BaseController::GLOBAL_ERRORS)
                                                 .user_agent(BaseController.user_agent)
                                                 .global_header('accessToken', @config.access_token)

      initialize_auth_managers(@global_configuration)
      @global_configuration = @global_configuration.auth_managers(@auth_managers)
    end

    # Initializes the auth managers hash used for authenticating API calls.
    # @param [GlobalConfiguration] global_config The global configuration of the SDK)
    def initialize_auth_managers(global_config)
      @auth_managers = {}
      http_client_config = global_config.client_configuration
      %w[basicAuth apiKey apiHeader OAuthCCG OAuthACG OAuthROPCG OAuthBearerToken CustomAuth].each do |auth|
        @auth_managers[auth] = nil
      end
      @auth_managers['basicAuth'] = BasicAuth.new(http_client_config.basic_auth_credentials)
      @auth_managers['apiKey'] = ApiKey.new(http_client_config.api_key_credentials)
      @auth_managers['apiHeader'] = ApiHeader.new(http_client_config.api_header_credentials)
      @auth_managers['OAuthCCG'] = OAuthCCG.new(http_client_config.o_auth_ccg_credentials,
                                                global_config)
      @auth_managers['OAuthACG'] = OAuthACG.new(http_client_config.o_auth_acg_credentials,
                                                global_config)
      @auth_managers['OAuthROPCG'] = OAuthROPCG.new(http_client_config.o_auth_ropcg_credentials,
                                                    global_config)
      @auth_managers['OAuthBearerToken'] = OAuthBearerToken.new(
        http_client_config.o_auth_bearer_token_credentials
      )
      @auth_managers['CustomAuth'] = CustomAuth.new(http_client_config)
    end
  end
end
