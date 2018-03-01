# StravaClient::SegmentsApi

All URIs are relative to *https://www.strava.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**explore_segments**](SegmentsApi.md#explore_segments) | **GET** /segments/explore | Explore segments
[**get_leaderboard_by_segment_id**](SegmentsApi.md#get_leaderboard_by_segment_id) | **GET** /segments/{id}/leaderboard | Get Segment Leaderboard
[**get_logged_in_athlete_starred_segments**](SegmentsApi.md#get_logged_in_athlete_starred_segments) | **GET** /segments/starred | List Starred Segments
[**get_segment_by_id**](SegmentsApi.md#get_segment_by_id) | **GET** /segments/{id} | Get Segment
[**star_segment**](SegmentsApi.md#star_segment) | **PUT** /segments/{id}/starred | Star Segment


# **explore_segments**
> ExplorerResponse explore_segments(bounds, opts)

Explore segments

Returns the segments matching a specified query.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::SegmentsApi.new

bounds = [3.4] # Array<Float> | The geographical boundaries of the search.

opts = { 
  activity_type: "activity_type_example", # String | Desired activity type.
  min_cat: 56, # Integer | The minimum climbing category.
  max_cat: 56 # Integer | The maximum climbing category.
}

begin
  #Explore segments
  result = api_instance.explore_segments(bounds, opts)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling SegmentsApi->explore_segments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bounds** | [**Array&lt;Float&gt;**](Float.md)| The geographical boundaries of the search. | 
 **activity_type** | **String**| Desired activity type. | [optional] 
 **min_cat** | **Integer**| The minimum climbing category. | [optional] 
 **max_cat** | **Integer**| The maximum climbing category. | [optional] 

### Return type

[**ExplorerResponse**](ExplorerResponse.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_leaderboard_by_segment_id**
> SegmentLeaderboard get_leaderboard_by_segment_id(id, opts)

Get Segment Leaderboard

Returns the specified segment leaderboard.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::SegmentsApi.new

id = 789 # Integer | The identifier of the segment leaderboard.

opts = { 
  gender: "gender_example", # String | Filter by gender.
  age_group: "age_group_example", # String | Premium Feature. Filter by age group.
  weight_class: "weight_class_example", # String | Premium Feature. Filter by weight class.
  following: true, # BOOLEAN | Filter by friends of the authenticated athlete.
  club_id: 789, # Integer | Filter by club.
  date_range: "date_range_example", # String | Filter by date range.
  context_entries: 56, # Integer | 
  page: 56, # Integer | Page number.
  per_page: 30 # Integer | Number of items per page. Defaults to 30.
}

begin
  #Get Segment Leaderboard
  result = api_instance.get_leaderboard_by_segment_id(id, opts)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling SegmentsApi->get_leaderboard_by_segment_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the segment leaderboard. | 
 **gender** | **String**| Filter by gender. | [optional] 
 **age_group** | **String**| Premium Feature. Filter by age group. | [optional] 
 **weight_class** | **String**| Premium Feature. Filter by weight class. | [optional] 
 **following** | **BOOLEAN**| Filter by friends of the authenticated athlete. | [optional] 
 **club_id** | **Integer**| Filter by club. | [optional] 
 **date_range** | **String**| Filter by date range. | [optional] 
 **context_entries** | **Integer**|  | [optional] 
 **page** | **Integer**| Page number. | [optional] 
 **per_page** | **Integer**| Number of items per page. Defaults to 30. | [optional] [default to 30]

### Return type

[**SegmentLeaderboard**](SegmentLeaderboard.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_logged_in_athlete_starred_segments**
> Array&lt;SummarySegment&gt; get_logged_in_athlete_starred_segments(opts)

List Starred Segments

List of the authenticated athlete's starred segments.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::SegmentsApi.new

opts = { 
  page: 56, # Integer | Page number.
  per_page: 30 # Integer | Number of items per page. Defaults to 30.
}

begin
  #List Starred Segments
  result = api_instance.get_logged_in_athlete_starred_segments(opts)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling SegmentsApi->get_logged_in_athlete_starred_segments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number. | [optional] 
 **per_page** | **Integer**| Number of items per page. Defaults to 30. | [optional] [default to 30]

### Return type

[**Array&lt;SummarySegment&gt;**](SummarySegment.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_segment_by_id**
> DetailedSegment get_segment_by_id(id)

Get Segment

Returns the specified segment.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::SegmentsApi.new

id = 789 # Integer | The identifier of the segment.


begin
  #Get Segment
  result = api_instance.get_segment_by_id(id)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling SegmentsApi->get_segment_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the segment. | 

### Return type

[**DetailedSegment**](DetailedSegment.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **star_segment**
> DetailedSegment star_segment(id)

Star Segment

Stars the given segment for the authenticated athlete.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::SegmentsApi.new

id = 789 # Integer | The identifier of the segment to star.


begin
  #Star Segment
  result = api_instance.star_segment(id)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling SegmentsApi->star_segment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the segment to star. | 

### Return type

[**DetailedSegment**](DetailedSegment.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



