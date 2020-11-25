# StravaClient::RoutesApi

All URIs are relative to *https://www.strava.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_route_as_gpx**](RoutesApi.md#get_route_as_gpx) | **GET** /routes/{id}/export_gpx | Export Route GPX
[**get_route_as_tcx**](RoutesApi.md#get_route_as_tcx) | **GET** /routes/{id}/export_tcx | Export Route TCX
[**get_route_by_id**](RoutesApi.md#get_route_by_id) | **GET** /routes/{id} | Get Route
[**get_routes_by_athlete_id**](RoutesApi.md#get_routes_by_athlete_id) | **GET** /athletes/{id}/routes | List Athlete Routes


# **get_route_as_gpx**
> get_route_as_gpx(id)

Export Route GPX

Returns a GPX file of the route. Requires read_all scope for private routes.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::RoutesApi.new

id = 789 # Integer | The identifier of the route.


begin
  #Export Route GPX
  api_instance.get_route_as_gpx(id)
rescue StravaClient::ApiError => e
  puts "Exception when calling RoutesApi->get_route_as_gpx: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the route. | 

### Return type

nil (empty response body)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_route_as_tcx**
> get_route_as_tcx(id)

Export Route TCX

Returns a TCX file of the route. Requires read_all scope for private routes.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::RoutesApi.new

id = 789 # Integer | The identifier of the route.


begin
  #Export Route TCX
  api_instance.get_route_as_tcx(id)
rescue StravaClient::ApiError => e
  puts "Exception when calling RoutesApi->get_route_as_tcx: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the route. | 

### Return type

nil (empty response body)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_route_by_id**
> Route get_route_by_id(id)

Get Route

Returns a route using its identifier. Requires read_all scope for private routes.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::RoutesApi.new

id = 789 # Integer | The identifier of the route.


begin
  #Get Route
  result = api_instance.get_route_by_id(id)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling RoutesApi->get_route_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the route. | 

### Return type

[**Route**](Route.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_routes_by_athlete_id**
> Array&lt;Route&gt; get_routes_by_athlete_id(opts)

List Athlete Routes

Returns a list of the routes created by the authenticated athlete. Private routes are filtered out unless requested by a token with read_all scope.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::RoutesApi.new

opts = { 
  page: 56, # Integer | Page number. Defaults to 1.
  per_page: 30 # Integer | Number of items per page. Defaults to 30.
}

begin
  #List Athlete Routes
  result = api_instance.get_routes_by_athlete_id(opts)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling RoutesApi->get_routes_by_athlete_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number. Defaults to 1. | [optional] 
 **per_page** | **Integer**| Number of items per page. Defaults to 30. | [optional] [default to 30]

### Return type

[**Array&lt;Route&gt;**](Route.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



