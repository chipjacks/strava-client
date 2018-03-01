# StravaClient::StreamsApi

All URIs are relative to *https://www.strava.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_activity_streams**](StreamsApi.md#get_activity_streams) | **GET** /activities/{id}/streams | Get Activity Streams
[**get_segment_effort_streams**](StreamsApi.md#get_segment_effort_streams) | **GET** /segment_efforts/{id}/streams | Get segment effort streams
[**get_segment_streams**](StreamsApi.md#get_segment_streams) | **GET** /segments/{id}/streams | Get Segment Streams


# **get_activity_streams**
> StreamSet get_activity_streams(id, keys, key_by_type)

Get Activity Streams

Returns the given activity's streams.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::StreamsApi.new

id = 789 # Integer | The identifier of the activity.

keys = ["keys_example"] # Array<String> | Desired stream types.

key_by_type = true # BOOLEAN | Must be true.


begin
  #Get Activity Streams
  result = api_instance.get_activity_streams(id, keys, key_by_type)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling StreamsApi->get_activity_streams: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the activity. | 
 **keys** | [**Array&lt;String&gt;**](String.md)| Desired stream types. | 
 **key_by_type** | **BOOLEAN**| Must be true. | [default to true]

### Return type

[**StreamSet**](StreamSet.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_segment_effort_streams**
> StreamSet get_segment_effort_streams(id, keys, key_by_type)

Get segment effort streams

Returns a set of streams for a segment effort completed by the authenticated athlete.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::StreamsApi.new

id = 789 # Integer | The identifier of the segment effort.

keys = ["keys_example"] # Array<String> | The types of streams to return.

key_by_type = true # BOOLEAN | Must be true.


begin
  #Get segment effort streams
  result = api_instance.get_segment_effort_streams(id, keys, key_by_type)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling StreamsApi->get_segment_effort_streams: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the segment effort. | 
 **keys** | [**Array&lt;String&gt;**](String.md)| The types of streams to return. | 
 **key_by_type** | **BOOLEAN**| Must be true. | [default to true]

### Return type

[**StreamSet**](StreamSet.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_segment_streams**
> StreamSet get_segment_streams(id, keys, key_by_type)

Get Segment Streams

Returns the given segment's streams.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::StreamsApi.new

id = 789 # Integer | The identifier of the segment.

keys = ["keys_example"] # Array<String> | The types of streams to return.

key_by_type = true # BOOLEAN | Must be true.


begin
  #Get Segment Streams
  result = api_instance.get_segment_streams(id, keys, key_by_type)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling StreamsApi->get_segment_streams: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the segment. | 
 **keys** | [**Array&lt;String&gt;**](String.md)| The types of streams to return. | 
 **key_by_type** | **BOOLEAN**| Must be true. | [default to true]

### Return type

[**StreamSet**](StreamSet.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



