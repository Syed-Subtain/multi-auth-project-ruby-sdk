
# OAuth 2 Bearer token



Documentation for accessing and setting credentials for OAuthBearerToken.

## Auth Credentials

| Name | Type | Description | Getter |
|  --- | --- | --- | --- |
| AccessToken | `String` | The OAuth 2.0 Access Token to use for API requests. | `access_token` |



**Note:** Auth credentials can be set using `OAuthBearerTokenCredentials` object, passed in as named parameter `o_auth_bearer_token_credentials` in the client initialization.

## Usage Example

### Client Initialization

You must provide credentials in the client as shown in the following code snippet.

```ruby
client = MultiAuthSample::Client.new(
  o_auth_bearer_token_credentials: OAuthBearerTokenCredentials.new(
    access_token: 'AccessToken'
  )
)
```


