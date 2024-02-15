
# Custom Query Parameter



Documentation for accessing and setting credentials for apiKey.

## Auth Credentials

| Name | Type | Description | Getter |
|  --- | --- | --- | --- |
| token | `String` | - | `token` |
| api-key | `String` | - | `api_key` |



**Note:** Auth credentials can be set using `ApiKeyCredentials` object, passed in as named parameter `api_key_credentials` in the client initialization.

## Usage Example

### Client Initialization

You must provide credentials in the client as shown in the following code snippet.

```ruby
client = MultiAuthSample::Client.new(
  api_key_credentials: ApiKeyCredentials.new(
    token: 'token',
    api_key: 'api-key'
  )
)
```


