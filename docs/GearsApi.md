# StravaClient::GearsApi

All URIs are relative to *https://www.strava.com/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_gear_by_id**](GearsApi.md#get_gear_by_id) | **GET** /gear/{id} | Get Equipment |


## get_gear_by_id

> <DetailedGear> get_gear_by_id(id)

Get Equipment

Returns an equipment using its identifier.

### Examples

```ruby
require 'time'
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::GearsApi.new
id = 'id_example' # String | The identifier of the gear.

begin
  # Get Equipment
  result = api_instance.get_gear_by_id(id)
  p result
rescue StravaClient::ApiError => e
  puts "Error when calling GearsApi->get_gear_by_id: #{e}"
end
```

#### Using the get_gear_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetailedGear>, Integer, Hash)> get_gear_by_id_with_http_info(id)

```ruby
begin
  # Get Equipment
  data, status_code, headers = api_instance.get_gear_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetailedGear>
rescue StravaClient::ApiError => e
  puts "Error when calling GearsApi->get_gear_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The identifier of the gear. |  |

### Return type

[**DetailedGear**](DetailedGear.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

