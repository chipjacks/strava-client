# StravaClient::AthletesApi

All URIs are relative to *https://www.strava.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_logged_in_athlete**](AthletesApi.md#get_logged_in_athlete) | **GET** /athlete | Get Authenticated Athlete
[**get_logged_in_athlete_zones**](AthletesApi.md#get_logged_in_athlete_zones) | **GET** /athlete/zones | Get Zones
[**get_stats**](AthletesApi.md#get_stats) | **GET** /athletes/{id}/stats | Get Athlete Stats
[**update_logged_in_athlete**](AthletesApi.md#update_logged_in_athlete) | **PUT** /athlete | Update Athlete


# **get_logged_in_athlete**
> DetailedAthlete get_logged_in_athlete

Get Authenticated Athlete

Returns the currently authenticated athlete.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::AthletesApi.new

begin
  #Get Authenticated Athlete
  result = api_instance.get_logged_in_athlete
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling AthletesApi->get_logged_in_athlete: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DetailedAthlete**](DetailedAthlete.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_logged_in_athlete_zones**
> Zones get_logged_in_athlete_zones

Get Zones

Returns the the authenticated athlete's heart rate and power zones.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::AthletesApi.new

begin
  #Get Zones
  result = api_instance.get_logged_in_athlete_zones
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling AthletesApi->get_logged_in_athlete_zones: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Zones**](Zones.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_stats**
> ActivityStats get_stats(id, opts)

Get Athlete Stats

Returns the activity stats of an athlete.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::AthletesApi.new

id = 56 # Integer | The identifier of the athlete.

opts = { 
  page: 56, # Integer | Page number.
  per_page: 30 # Integer | Number of items per page. Defaults to 30.
}

begin
  #Get Athlete Stats
  result = api_instance.get_stats(id, opts)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling AthletesApi->get_stats: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the athlete. | 
 **page** | **Integer**| Page number. | [optional] 
 **per_page** | **Integer**| Number of items per page. Defaults to 30. | [optional] [default to 30]

### Return type

[**ActivityStats**](ActivityStats.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_logged_in_athlete**
> DetailedAthlete update_logged_in_athlete(body)

Update Athlete

Update the currently authenticated athlete.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::AthletesApi.new

body = StravaClient::DetailedAthlete.new # DetailedAthlete | The athlete entity to update.


begin
  #Update Athlete
  result = api_instance.update_logged_in_athlete(body)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling AthletesApi->update_logged_in_athlete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DetailedAthlete**](DetailedAthlete.md)| The athlete entity to update. | 

### Return type

[**DetailedAthlete**](DetailedAthlete.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



