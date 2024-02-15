# multi_auth_sample
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'json'
require 'minitest/autorun'
require 'minitest/hell'
require 'minitest/pride'
require 'minitest/proveit'
require 'multi_auth_sample'
require_relative '../http_response_catcher'

class ControllerTestBase < Minitest::Test
  parallelize_me!
  include MultiAuthSample

  # Create configuration and set any test parameters
  def create_configuration
    Configuration.new(
      o_auth_bearer_token_credentials: OAuthBearerTokenCredentials.new(
        access_token: 'azHmdOe09EdchxeWsdnplkQbv76sJH'
      ),
      access_token: 'azHmdOe09EdchxeWsdnplkQbv76sJH',
      http_callback: HttpResponseCatcher.new
    )
  end

  # Initializes the base test controller
  def setup_class
    _config = create_configuration
    @client = Client.new(config: _config)

    o_auth_ccg_token = @client.o_auth_ccg.fetch_token()
    o_auth_ccg_credentials = _config.o_auth_ccg_credentials.clone_with(o_auth_token: o_auth_ccg_token)
    _config = _config.clone_with(o_auth_ccg_credentials: o_auth_ccg_credentials)

    o_auth_acg_token = @client.o_auth_acg.fetch_token('910b000d4f')
    o_auth_acg_credentials = _config.o_auth_acg_credentials.clone_with(o_auth_token: o_auth_acg_token)
    _config = _config.clone_with(o_auth_acg_credentials: o_auth_acg_credentials)

    o_auth_ropcg_token = @client.o_auth_ropcg.fetch_token()
    o_auth_ropcg_credentials = _config.o_auth_ropcg_credentials.clone_with(o_auth_token: o_auth_ropcg_token)
    _config = _config.clone_with(o_auth_ropcg_credentials: o_auth_ropcg_credentials)
    @client = Client.new(config: _config)
  end
end