# multi_auth_sample
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require_relative 'controller_test_base'

class AuthenticationControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.authentication
    @response_catcher = @controller.http_call_back
  end

  # Todo: Add description for test test_o_auth2_test
  def test_o_auth2_test

    # Perform the API call through the SDK function
    result = @controller.o_auth_bearer_token()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    assert_equal('You\'ve passed the test!', @response_catcher.response.raw_body)
  end

  # Todo: Add description for test test_custom_authentication_test
  def test_custom_authentication_test

    # Perform the API call through the SDK function
    result = @controller.custom_authentication()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    assert_equal('You\'ve passed the test!', @response_catcher.response.raw_body)
  end

  # Todo: Add description for test test_custom_query_param_test
  def test_custom_query_param_test

    # Perform the API call through the SDK function
    result = @controller.custom_query_or_header_authentication()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    assert_equal('You\'ve passed the test!', @response_catcher.response.raw_body)
  end

  # Todo: Add description for test test_o_auth_or_combination_test
  def test_o_auth_or_combination_test

    # Perform the API call through the SDK function
    result = @controller.o_auth_grant_types_or_combinations()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    assert_equal('You\'ve passed the test!', @response_catcher.response.raw_body)
  end

  # Todo: Add description for test test_check_service_status
  def test_check_service_status

    # Perform the API call through the SDK function
    result = @controller.o_auth_client_credentials_grant()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
  end

  # Todo: Add description for test test_basic_auth_and_api_key_and_api_header
  def test_basic_auth_and_api_key_and_api_header

    # Perform the API call through the SDK function
    result = @controller.basic_auth_and_api_header_auth()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    assert_equal('You\'ve passed the test!', @response_catcher.response.raw_body)
  end

  # Todo: Add description for test test_multiple_auth_or_combination_test
  def test_multiple_auth_or_combination_test

    # Perform the API call through the SDK function
    result = @controller.multiple_auth_combination()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test whether the captured response is as we expected
    refute_nil(result)
    assert_equal('You\'ve passed the test!', @response_catcher.response.raw_body)
  end

end