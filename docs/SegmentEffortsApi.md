# StravaClient::SegmentEffortsApi

All URIs are relative to *https://www.strava.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_efforts_by_segment_id**](SegmentEffortsApi.md#get_efforts_by_segment_id) | **GET** /segment_efforts | List Segment Efforts
[**get_segment_effort_by_id**](SegmentEffortsApi.md#get_segment_effort_by_id) | **GET** /segment_efforts/{id} | Get Segment Effort


# **get_efforts_by_segment_id**
> Array&lt;DetailedSegmentEffort&gt; get_efforts_by_segment_id(segment_id, opts)

List Segment Efforts

Returns a set of the authenticated athlete's segment efforts for a given segment.  Requires subscription.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::SegmentEffortsApi.new

segment_id = 56 # Integer | The identifier of the segment.

opts = { 
  start_date_local: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | ISO 8601 formatted date time.
  end_date_local: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | ISO 8601 formatted date time.
  per_page: 30 # Integer | Number of items per page. Defaults to 30.
}

begin
  #List Segment Efforts
  result = api_instance.get_efforts_by_segment_id(segment_id, opts)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling SegmentEffortsApi->get_efforts_by_segment_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **segment_id** | **Integer**| The identifier of the segment. | 
 **start_date_local** | **DateTime**| ISO 8601 formatted date time. | [optional] 
 **end_date_local** | **DateTime**| ISO 8601 formatted date time. | [optional] 
 **per_page** | **Integer**| Number of items per page. Defaults to 30. | [optional] [default to 30]

### Return type

[**Array&lt;DetailedSegmentEffort&gt;**](DetailedSegmentEffort.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_segment_effort_by_id**
> DetailedSegmentEffort get_segment_effort_by_id(id)

Get Segment Effort

Returns a segment effort from an activity that is owned by the authenticated athlete. Requires subscription.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::SegmentEffortsApi.new

id = 789 # Integer | The identifier of the segment effort.


begin
  #Get Segment Effort
  result = api_instance.get_segment_effort_by_id(id)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling SegmentEffortsApi->get_segment_effort_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the segment effort. | 

### Return type

[**DetailedSegmentEffort**](DetailedSegmentEffort.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



