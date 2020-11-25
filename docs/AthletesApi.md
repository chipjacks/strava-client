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

Returns the currently authenticated athlete. Tokens with profile:read_all scope will receive a detailed athlete representation; all others will receive a summary representation.

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

Returns the the authenticated athlete's heart rate and power zones. Requires profile:read_all.

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
> ActivityStats get_stats(id)

Get Athlete Stats

Returns the activity stats of an athlete. Only includes data from activities set to Everyone visibilty.

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

id = 789 # Integer | The identifier of the athlete. Must match the authenticated athlete.


begin
  #Get Athlete Stats
  result = api_instance.get_stats(id)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling AthletesApi->get_stats: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the athlete. Must match the authenticated athlete. | 

### Return type

[**ActivityStats**](ActivityStats.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_logged_in_athlete**
> DetailedAthlete update_logged_in_athlete(weight)

Update Athlete

Update the currently authenticated athlete. Requires profile:write scope.

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

weight = 3.4 # Float | The weight of the athlete in kilograms.


begin
  #Update Athlete
  result = api_instance.update_logged_in_athlete(weight)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling AthletesApi->update_logged_in_athlete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **weight** | **Float**| The weight of the athlete in kilograms. | 

### Return type

[**DetailedAthlete**](DetailedAthlete.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



