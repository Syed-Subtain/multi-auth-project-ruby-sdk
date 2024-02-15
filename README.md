
# Getting Started with MultiAuth-Sample

## Introduction

API for Markdown Notes app.

## Install the Package

Install the gem from the command line:

```ruby
gem install multi-auth-project-sdk -v 1.0.0
```

Or add the gem to your Gemfile and run `bundle`:

```ruby
gem 'multi-auth-project-sdk', '1.0.0'
```

For additional gem details, see the [RubyGems page for the multi-auth-project-sdk gem](https://rubygems.org/gems/multi-auth-project-sdk/versions/1.0.0).

## Test the SDK

To run the tests, navigate to the root directory of the SDK in your terminal and execute the following command:

```
rake
```

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| `access_token` | `String` |  |
| `port` | `String` | *Default*: `'80'` |
| `suites` | `SuiteCodeEnum` | *Default*: `SuiteCodeEnum::HEARTS` |
| `environment` | Environment | The API environment. <br> **Default: `Environment.TESTING`** |
| `connection` | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| `adapter` | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| `timeout` | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| `max_retries` | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| `retry_interval` | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| `backoff_factor` | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| `retry_statuses` | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| `retry_methods` | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |
| `http_callback` | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |
| `basic_auth_credentials` | [`BasicAuthCredentials`](https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/doc/$a/https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/basic-authentication.md) | The credential object for Basic Authentication |
| `api_key_credentials` | [`ApiKeyCredentials`](https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/doc/$a/https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/custom-query-parameter.md) | The credential object for Custom Query Parameter |
| `api_header_credentials` | [`ApiHeaderCredentials`](https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/doc/$a/https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/custom-header-signature.md) | The credential object for Custom Header Signature |
| `o_auth_ccg_credentials` | [`OAuthCCGCredentials`](https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/doc/$a/https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/oauth-2-client-credentials-grant.md) | The credential object for OAuth 2 Client Credentials Grant |
| `o_auth_acg_credentials` | [`OAuthACGCredentials`](https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/doc/$a/https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/oauth-2-authorization-code-grant.md) | The credential object for OAuth 2 Authorization Code Grant |
| `o_auth_ropcg_credentials` | [`OAuthROPCGCredentials`](https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/doc/$a/https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/oauth-2-resource-owner-credentials-grant.md) | The credential object for OAuth 2 Resource Owner Credentials Grant |
| `o_auth_bearer_token_credentials` | [`OAuthBearerTokenCredentials`](https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/doc/$a/https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/oauth-2-bearer-token.md) | The credential object for OAuth 2 Bearer token |

The API client can be initialized as follows:

```ruby
client = MultiAuthSample::Client.new(
  access_token: 'accessToken',
  basic_auth_credentials: BasicAuthCredentials.new(
    username: 'Username',
    password: 'Password'
  ),
  api_key_credentials: ApiKeyCredentials.new(
    token: 'token',
    api_key: 'api-key'
  ),
  api_header_credentials: ApiHeaderCredentials.new(
    token: 'token',
    api_key: 'api-key'
  ),
  o_auth_ccg_credentials: OAuthCCGCredentials.new(
    o_auth_client_id: 'OAuthClientId',
    o_auth_client_secret: 'OAuthClientSecret'
  ),
  o_auth_acg_credentials: OAuthACGCredentials.new(
    o_auth_client_id: 'OAuthClientId',
    o_auth_client_secret: 'OAuthClientSecret',
    o_auth_redirect_uri: 'OAuthRedirectUri',
    o_auth_scopes: [
      OAuthScopeOAuthACGEnum::READ_SCOPE
    ]
  ),
  o_auth_ropcg_credentials: OAuthROPCGCredentials.new(
    o_auth_client_id: 'OAuthClientId',
    o_auth_client_secret: 'OAuthClientSecret',
    o_auth_username: 'OAuthUsername',
    o_auth_password: 'OAuthPassword'
  ),
  o_auth_bearer_token_credentials: OAuthBearerTokenCredentials.new(
    access_token: 'AccessToken'
  ),
  environment: Environment::TESTING,
  port: '80',
  suites: SuiteCodeEnum::HEARTS
)
```

## Environments

The SDK can be configured to use a different environment for making API calls. Available environments are:

### Fields

| Name | Description |
|  --- | --- |
| production | - |
| testing | **Default** |

## Authorization

This API uses the following authentication schemes.

* [`basicAuth (Basic Authentication)`](https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/doc/$a/https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/basic-authentication.md)
* [`apiKey (Custom Query Parameter)`](https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/doc/$a/https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/custom-query-parameter.md)
* [`apiHeader (Custom Header Signature)`](https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/doc/$a/https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/custom-header-signature.md)
* [`OAuthCCG (OAuth 2 Client Credentials Grant)`](https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/doc/$a/https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/oauth-2-client-credentials-grant.md)
* [`OAuthACG (OAuth 2 Authorization Code Grant)`](https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/doc/$a/https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/oauth-2-authorization-code-grant.md)
* [`OAuthROPCG (OAuth 2 Resource Owner Credentials Grant)`](https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/doc/$a/https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/oauth-2-resource-owner-credentials-grant.md)
* [`OAuthBearerToken (OAuth 2 Bearer token)`](https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/doc/$a/https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/oauth-2-bearer-token.md)
* `CustomAuth (Custom Authentication)`

## List of APIs

* [O Auth Authorization](https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/doc/controllers/o-auth-authorization.md)
* [Authentication](https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/doc/controllers/authentication.md)

## Classes Documentation

* [Utility Classes](https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/doc/utility-classes.md)
* [HttpResponse](https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/doc/http-response.md)
* [HttpRequest](https://www.github.com/Syed-Subtain/multi-auth-project-ruby-sdk/tree/1.0.0/doc/http-request.md)

