# Authentication

```ruby
authentication_controller = client.authentication
```

## Class Name

`AuthenticationController`

## Methods

* [O Auth Bearer Token](../../doc/controllers/authentication.md#o-auth-bearer-token)
* [Custom Authentication](../../doc/controllers/authentication.md#custom-authentication)
* [Custom Query or Header Authentication](../../doc/controllers/authentication.md#custom-query-or-header-authentication)
* [O Auth Grant Types or Combinations](../../doc/controllers/authentication.md#o-auth-grant-types-or-combinations)
* [No Auth](../../doc/controllers/authentication.md#no-auth)
* [O Auth Client Credentials Grant](../../doc/controllers/authentication.md#o-auth-client-credentials-grant)
* [Basic Auth and Api Header Auth](../../doc/controllers/authentication.md#basic-auth-and-api-header-auth)
* [O Auth Authorization Grant](../../doc/controllers/authentication.md#o-auth-authorization-grant)
* [Multiple Auth Combination](../../doc/controllers/authentication.md#multiple-auth-combination)


# O Auth Bearer Token

```ruby
def o_auth_bearer_token
```

## Response Type

`String`

## Example Usage

```ruby
result = authentication_controller.o_auth_bearer_token
```


# Custom Authentication

```ruby
def custom_authentication
```

## Response Type

`String`

## Example Usage

```ruby
result = authentication_controller.custom_authentication
```


# Custom Query or Header Authentication

```ruby
def custom_query_or_header_authentication
```

## Response Type

`String`

## Example Usage

```ruby
result = authentication_controller.custom_query_or_header_authentication
```


# O Auth Grant Types or Combinations

This endpoint tests or combinations of OAuth types

```ruby
def o_auth_grant_types_or_combinations
```

## Response Type

`String`

## Example Usage

```ruby
result = authentication_controller.o_auth_grant_types_or_combinations
```


# No Auth

**This endpoint is deprecated since version 0.0.1-alpha. You should not use this method as it requires no auth and can bring security issues to the server and api call itself!!**

This endpoint does not use auth.

Swagger URL Endpoint 1: [http://swagger.io/endpoint1](http://swagger.io/endpoint1)

:information_source: **Note** This endpoint does not require authentication.

```ruby
def no_auth
```

## Response Type

`String`

## Example Usage

```ruby
result = authentication_controller.no_auth
```


# O Auth Client Credentials Grant

```ruby
def o_auth_client_credentials_grant
```

## Response Type

[`ServiceStatus`](../../doc/models/service-status.md)

## Example Usage

```ruby
result = authentication_controller.o_auth_client_credentials_grant
```


# Basic Auth and Api Header Auth

```ruby
def basic_auth_and_api_header_auth
```

## Response Type

`String`

## Example Usage

```ruby
result = authentication_controller.basic_auth_and_api_header_auth
```


# O Auth Authorization Grant

```ruby
def o_auth_authorization_grant
```

## Response Type

[`User`](../../doc/models/user.md)

## Example Usage

```ruby
result = authentication_controller.o_auth_authorization_grant
```


# Multiple Auth Combination

**This endpoint is deprecated.**

This endpoint uses globally applied auth which is a hypothetical scneraio but covers the worst case.

Swagger URL Endpoint 1: [http://swagger.io/endpoint1](http://swagger.io/endpoint1)

```ruby
def multiple_auth_combination
```

## Response Type

`String`

## Example Usage

```ruby
result = authentication_controller.multiple_auth_combination
```

