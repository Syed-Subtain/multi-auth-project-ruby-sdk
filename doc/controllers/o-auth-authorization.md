# O Auth Authorization

```ruby
o_auth_authorization_controller = client.o_auth_authorization
```

## Class Name

`OAuthAuthorizationController`

## Methods

* [Request Token O Auth CCG](../../doc/controllers/o-auth-authorization.md#request-token-o-auth-ccg)
* [Request Token O Auth ACG](../../doc/controllers/o-auth-authorization.md#request-token-o-auth-acg)
* [Refresh Token O Auth ACG](../../doc/controllers/o-auth-authorization.md#refresh-token-o-auth-acg)
* [Request Token O Auth ROPCG](../../doc/controllers/o-auth-authorization.md#request-token-o-auth-ropcg)
* [Refresh Token O Auth ROPCG](../../doc/controllers/o-auth-authorization.md#refresh-token-o-auth-ropcg)


# Request Token O Auth CCG

Create a new OAuth 2 token.

:information_source: **Note** This endpoint does not require authentication.

```ruby
def request_token_o_auth_ccg(authorization,
                             scope: nil,
                             _field_parameters: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `authorization` | `String` | Header, Required | Authorization header in Basic auth format |
| `scope` | `String` | Form, Optional | Requested scopes as a space-delimited list. |
| `_field_parameters` | `array` | Optional | Pass additional field parameters. |

## Server

`Server::AUTH`

## Response Type

[`OAuthToken`](../../doc/models/o-auth-token.md)

## Example Usage

```ruby
authorization = 'Authorization8'

_field_parameters = {
  'key0': 'additionalFieldParams9'
}

result = o_auth_authorization_controller.request_token_o_auth_ccg(
  authorization,
  _field_parameters: _field_parameters
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | OAuth 2 provider returned an error. | [`OAuthProviderException`](../../doc/models/o-auth-provider-exception.md) |
| 401 | OAuth 2 provider says client authentication failed. | [`OAuthProviderException`](../../doc/models/o-auth-provider-exception.md) |


# Request Token O Auth ACG

Create a new OAuth 2 token.

:information_source: **Note** This endpoint does not require authentication.

```ruby
def request_token_o_auth_acg(authorization,
                             code,
                             redirect_uri,
                             _field_parameters: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `authorization` | `String` | Header, Required | Authorization header in Basic auth format |
| `code` | `String` | Form, Required | Authorization Code |
| `redirect_uri` | `String` | Form, Required | Redirect Uri |
| `_field_parameters` | `array` | Optional | Pass additional field parameters. |

## Server

`Server::`

## Response Type

[`OAuthToken`](../../doc/models/o-auth-token.md)

## Example Usage

```ruby
authorization = 'Authorization8'

code = 'code8'

redirect_uri = 'redirect_uri8'

_field_parameters = {
  'key0': 'additionalFieldParams9'
}

result = o_auth_authorization_controller.request_token_o_auth_acg(
  authorization,
  code,
  redirect_uri,
  _field_parameters: _field_parameters
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | OAuth 2 provider returned an error. | [`OAuthProviderException`](../../doc/models/o-auth-provider-exception.md) |
| 401 | OAuth 2 provider says client authentication failed. | [`OAuthProviderException`](../../doc/models/o-auth-provider-exception.md) |


# Refresh Token O Auth ACG

Obtain a new access token using a refresh token

:information_source: **Note** This endpoint does not require authentication.

```ruby
def refresh_token_o_auth_acg(authorization,
                             refresh_token,
                             scope: nil,
                             _field_parameters: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `authorization` | `String` | Header, Required | Authorization header in Basic auth format |
| `refresh_token` | `String` | Form, Required | Refresh token |
| `scope` | `String` | Form, Optional | Requested scopes as a space-delimited list. |
| `_field_parameters` | `array` | Optional | Pass additional field parameters. |

## Server

`Server::`

## Response Type

[`OAuthToken`](../../doc/models/o-auth-token.md)

## Example Usage

```ruby
authorization = 'Authorization8'

refresh_token = 'refresh_token0'

_field_parameters = {
  'key0': 'additionalFieldParams9'
}

result = o_auth_authorization_controller.refresh_token_o_auth_acg(
  authorization,
  refresh_token,
  _field_parameters: _field_parameters
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | OAuth 2 provider returned an error. | [`OAuthProviderException`](../../doc/models/o-auth-provider-exception.md) |
| 401 | OAuth 2 provider says client authentication failed. | [`OAuthProviderException`](../../doc/models/o-auth-provider-exception.md) |


# Request Token O Auth ROPCG

Create a new OAuth 2 token.

:information_source: **Note** This endpoint does not require authentication.

```ruby
def request_token_o_auth_ropcg(authorization,
                               username,
                               password,
                               scope: nil,
                               _field_parameters: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `authorization` | `String` | Header, Required | Authorization header in Basic auth format |
| `username` | `String` | Form, Required | Resource owner username |
| `password` | `String` | Form, Required | Resource owner password |
| `scope` | `String` | Form, Optional | Requested scopes as a space-delimited list. |
| `_field_parameters` | `array` | Optional | Pass additional field parameters. |

## Response Type

[`OAuthToken`](../../doc/models/o-auth-token.md)

## Example Usage

```ruby
authorization = 'Authorization8'

username = 'username0'

password = 'password4'

_field_parameters = {
  'key0': 'additionalFieldParams9'
}

result = o_auth_authorization_controller.request_token_o_auth_ropcg(
  authorization,
  username,
  password,
  _field_parameters: _field_parameters
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | OAuth 2 provider returned an error. | [`OAuthProviderException`](../../doc/models/o-auth-provider-exception.md) |
| 401 | OAuth 2 provider says client authentication failed. | [`OAuthProviderException`](../../doc/models/o-auth-provider-exception.md) |


# Refresh Token O Auth ROPCG

Obtain a new access token using a refresh token

:information_source: **Note** This endpoint does not require authentication.

```ruby
def refresh_token_o_auth_ropcg(authorization,
                               refresh_token,
                               scope: nil,
                               _field_parameters: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `authorization` | `String` | Header, Required | Authorization header in Basic auth format |
| `refresh_token` | `String` | Form, Required | Refresh token |
| `scope` | `String` | Form, Optional | Requested scopes as a space-delimited list. |
| `_field_parameters` | `array` | Optional | Pass additional field parameters. |

## Response Type

[`OAuthToken`](../../doc/models/o-auth-token.md)

## Example Usage

```ruby
authorization = 'Authorization8'

refresh_token = 'refresh_token0'

_field_parameters = {
  'key0': 'additionalFieldParams9'
}

result = o_auth_authorization_controller.refresh_token_o_auth_ropcg(
  authorization,
  refresh_token,
  _field_parameters: _field_parameters
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | OAuth 2 provider returned an error. | [`OAuthProviderException`](../../doc/models/o-auth-provider-exception.md) |
| 401 | OAuth 2 provider says client authentication failed. | [`OAuthProviderException`](../../doc/models/o-auth-provider-exception.md) |

