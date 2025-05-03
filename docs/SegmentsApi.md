# StravaClient::SegmentsApi

All URIs are relative to *https://www.strava.com/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**explore_segments**](SegmentsApi.md#explore_segments) | **GET** /segments/explore | Explore segments |
| [**get_logged_in_athlete_starred_segments**](SegmentsApi.md#get_logged_in_athlete_starred_segments) | **GET** /segments/starred | List Starred Segments |
| [**get_segment_by_id**](SegmentsApi.md#get_segment_by_id) | **GET** /segments/{id} | Get Segment |
| [**star_segment**](SegmentsApi.md#star_segment) | **PUT** /segments/{id}/starred | Star Segment |


## explore_segments

> <ExplorerResponse> explore_segments(bounds, opts)

Explore segments

Returns the top 10 segments matching a specified query.

### Examples

```ruby
require 'time'
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::SegmentsApi.new
bounds = [3.56] # Array<Float> | The latitude and longitude for two points describing a rectangular boundary for the search: [southwest corner latitutde, southwest corner longitude, northeast corner latitude, northeast corner longitude]
opts = {
  activity_type: 'running', # String | Desired activity type.
  min_cat: 56, # Integer | The minimum climbing category.
  max_cat: 56 # Integer | The maximum climbing category.
}

begin
  # Explore segments
  result = api_instance.explore_segments(bounds, opts)
  p result
rescue StravaClient::ApiError => e
  puts "Error when calling SegmentsApi->explore_segments: #{e}"
end
```

#### Using the explore_segments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExplorerResponse>, Integer, Hash)> explore_segments_with_http_info(bounds, opts)

```ruby
begin
  # Explore segments
  data, status_code, headers = api_instance.explore_segments_with_http_info(bounds, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExplorerResponse>
rescue StravaClient::ApiError => e
  puts "Error when calling SegmentsApi->explore_segments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bounds** | [**Array&lt;Float&gt;**](Float.md) | The latitude and longitude for two points describing a rectangular boundary for the search: [southwest corner latitutde, southwest corner longitude, northeast corner latitude, northeast corner longitude] |  |
| **activity_type** | **String** | Desired activity type. | [optional] |
| **min_cat** | **Integer** | The minimum climbing category. | [optional] |
| **max_cat** | **Integer** | The maximum climbing category. | [optional] |

### Return type

[**ExplorerResponse**](ExplorerResponse.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_logged_in_athlete_starred_segments

> <Array<SummarySegment>> get_logged_in_athlete_starred_segments(opts)

List Starred Segments

List of the authenticated athlete's starred segments. Private segments are filtered out unless requested by a token with read_all scope.

### Examples

```ruby
require 'time'
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::SegmentsApi.new
opts = {
  page: 56, # Integer | Page number. Defaults to 1.
  per_page: 56 # Integer | Number of items per page. Defaults to 30.
}

begin
  # List Starred Segments
  result = api_instance.get_logged_in_athlete_starred_segments(opts)
  p result
rescue StravaClient::ApiError => e
  puts "Error when calling SegmentsApi->get_logged_in_athlete_starred_segments: #{e}"
end
```

#### Using the get_logged_in_athlete_starred_segments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SummarySegment>>, Integer, Hash)> get_logged_in_athlete_starred_segments_with_http_info(opts)

```ruby
begin
  # List Starred Segments
  data, status_code, headers = api_instance.get_logged_in_athlete_starred_segments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SummarySegment>>
rescue StravaClient::ApiError => e
  puts "Error when calling SegmentsApi->get_logged_in_athlete_starred_segments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number. Defaults to 1. | [optional] |
| **per_page** | **Integer** | Number of items per page. Defaults to 30. | [optional][default to 30] |

### Return type

[**Array&lt;SummarySegment&gt;**](SummarySegment.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_segment_by_id

> <DetailedSegment> get_segment_by_id(id)

Get Segment

Returns the specified segment. read_all scope required in order to retrieve athlete-specific segment information, or to retrieve private segments.

### Examples

```ruby
require 'time'
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::SegmentsApi.new
id = 789 # Integer | The identifier of the segment.

begin
  # Get Segment
  result = api_instance.get_segment_by_id(id)
  p result
rescue StravaClient::ApiError => e
  puts "Error when calling SegmentsApi->get_segment_by_id: #{e}"
end
```

#### Using the get_segment_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetailedSegment>, Integer, Hash)> get_segment_by_id_with_http_info(id)

```ruby
begin
  # Get Segment
  data, status_code, headers = api_instance.get_segment_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetailedSegment>
rescue StravaClient::ApiError => e
  puts "Error when calling SegmentsApi->get_segment_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The identifier of the segment. |  |

### Return type

[**DetailedSegment**](DetailedSegment.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## star_segment

> <DetailedSegment> star_segment(id, starred)

Star Segment

Stars/Unstars the given segment for the authenticated athlete. Requires profile:write scope.

### Examples

```ruby
require 'time'
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::SegmentsApi.new
id = 789 # Integer | The identifier of the segment to star.
starred = true # Boolean | If true, star the segment; if false, unstar the segment.

begin
  # Star Segment
  result = api_instance.star_segment(id, starred)
  p result
rescue StravaClient::ApiError => e
  puts "Error when calling SegmentsApi->star_segment: #{e}"
end
```

#### Using the star_segment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetailedSegment>, Integer, Hash)> star_segment_with_http_info(id, starred)

```ruby
begin
  # Star Segment
  data, status_code, headers = api_instance.star_segment_with_http_info(id, starred)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetailedSegment>
rescue StravaClient::ApiError => e
  puts "Error when calling SegmentsApi->star_segment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The identifier of the segment to star. |  |
| **starred** | **Boolean** | If true, star the segment; if false, unstar the segment. | [default to false] |

### Return type

[**DetailedSegment**](DetailedSegment.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

