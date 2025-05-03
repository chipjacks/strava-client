# StravaClient::SegmentEffortsApi

All URIs are relative to *https://www.strava.com/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_efforts_by_segment_id**](SegmentEffortsApi.md#get_efforts_by_segment_id) | **GET** /segment_efforts | List Segment Efforts |
| [**get_segment_effort_by_id**](SegmentEffortsApi.md#get_segment_effort_by_id) | **GET** /segment_efforts/{id} | Get Segment Effort |


## get_efforts_by_segment_id

> <Array<DetailedSegmentEffort>> get_efforts_by_segment_id(segment_id, opts)

List Segment Efforts

Returns a set of the authenticated athlete's segment efforts for a given segment.  Requires subscription.

### Examples

```ruby
require 'time'
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::SegmentEffortsApi.new
segment_id = 56 # Integer | The identifier of the segment.
opts = {
  start_date_local: Time.parse('2013-10-20T19:20:30+01:00'), # Time | ISO 8601 formatted date time.
  end_date_local: Time.parse('2013-10-20T19:20:30+01:00'), # Time | ISO 8601 formatted date time.
  per_page: 56 # Integer | Number of items per page. Defaults to 30.
}

begin
  # List Segment Efforts
  result = api_instance.get_efforts_by_segment_id(segment_id, opts)
  p result
rescue StravaClient::ApiError => e
  puts "Error when calling SegmentEffortsApi->get_efforts_by_segment_id: #{e}"
end
```

#### Using the get_efforts_by_segment_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DetailedSegmentEffort>>, Integer, Hash)> get_efforts_by_segment_id_with_http_info(segment_id, opts)

```ruby
begin
  # List Segment Efforts
  data, status_code, headers = api_instance.get_efforts_by_segment_id_with_http_info(segment_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DetailedSegmentEffort>>
rescue StravaClient::ApiError => e
  puts "Error when calling SegmentEffortsApi->get_efforts_by_segment_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **segment_id** | **Integer** | The identifier of the segment. |  |
| **start_date_local** | **Time** | ISO 8601 formatted date time. | [optional] |
| **end_date_local** | **Time** | ISO 8601 formatted date time. | [optional] |
| **per_page** | **Integer** | Number of items per page. Defaults to 30. | [optional][default to 30] |

### Return type

[**Array&lt;DetailedSegmentEffort&gt;**](DetailedSegmentEffort.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_segment_effort_by_id

> <DetailedSegmentEffort> get_segment_effort_by_id(id)

Get Segment Effort

Returns a segment effort from an activity that is owned by the authenticated athlete. Requires subscription.

### Examples

```ruby
require 'time'
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::SegmentEffortsApi.new
id = 789 # Integer | The identifier of the segment effort.

begin
  # Get Segment Effort
  result = api_instance.get_segment_effort_by_id(id)
  p result
rescue StravaClient::ApiError => e
  puts "Error when calling SegmentEffortsApi->get_segment_effort_by_id: #{e}"
end
```

#### Using the get_segment_effort_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetailedSegmentEffort>, Integer, Hash)> get_segment_effort_by_id_with_http_info(id)

```ruby
begin
  # Get Segment Effort
  data, status_code, headers = api_instance.get_segment_effort_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetailedSegmentEffort>
rescue StravaClient::ApiError => e
  puts "Error when calling SegmentEffortsApi->get_segment_effort_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The identifier of the segment effort. |  |

### Return type

[**DetailedSegmentEffort**](DetailedSegmentEffort.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

