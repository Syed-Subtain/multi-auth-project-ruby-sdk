
# Client Class Documentation

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
| `basic_auth_credentials` | [`BasicAuthCredentials`]($a/basic-authentication.md) | The credential object for Basic Authentication |
| `api_key_credentials` | [`ApiKeyCredentials`]($a/custom-query-parameter.md) | The credential object for Custom Query Parameter |
| `api_header_credentials` | [`ApiHeaderCredentials`]($a/custom-header-signature.md) | The credential object for Custom Header Signature |
| `o_auth_ccg_credentials` | [`OAuthCCGCredentials`]($a/oauth-2-client-credentials-grant.md) | The credential object for OAuth 2 Client Credentials Grant |
| `o_auth_acg_credentials` | [`OAuthACGCredentials`]($a/oauth-2-authorization-code-grant.md) | The credential object for OAuth 2 Authorization Code Grant |
| `o_auth_ropcg_credentials` | [`OAuthROPCGCredentials`]($a/oauth-2-resource-owner-credentials-grant.md) | The credential object for OAuth 2 Resource Owner Credentials Grant |
| `o_auth_bearer_token_credentials` | [`OAuthBearerTokenCredentials`]($a/oauth-2-bearer-token.md) | The credential object for OAuth 2 Bearer token |

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

## MultiAuth-Sample Client

The gateway for the SDK. This class acts as a factory for the Controllers and also holds the configuration of the SDK.

## Controllers

| Name | Description |
|  --- | --- |
| authentication | Gets AuthenticationController |
| o_auth_authorization | Gets OAuthAuthorizationController |

