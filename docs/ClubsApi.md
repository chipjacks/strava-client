# StravaClient::ClubsApi

All URIs are relative to *https://www.strava.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_club_activities_by_id**](ClubsApi.md#get_club_activities_by_id) | **GET** /clubs/{id}/activities | List Club Activities
[**get_club_admins_by_id**](ClubsApi.md#get_club_admins_by_id) | **GET** /clubs/{id}/admins | List Club Administrators.
[**get_club_by_id**](ClubsApi.md#get_club_by_id) | **GET** /clubs/{id} | Get Club
[**get_club_members_by_id**](ClubsApi.md#get_club_members_by_id) | **GET** /clubs/{id}/members | List Club Members
[**get_logged_in_athlete_clubs**](ClubsApi.md#get_logged_in_athlete_clubs) | **GET** /athlete/clubs | List Athlete Clubs
[**join_club_by_id**](ClubsApi.md#join_club_by_id) | **POST** /clubs/{id}/join | Join Club
[**leave_club_by_id**](ClubsApi.md#leave_club_by_id) | **POST** /clubs/{id}/leave | Leave Club


# **get_club_activities_by_id**
> Array&lt;SummaryActivity&gt; get_club_activities_by_id(id, opts)

List Club Activities

Retrieve recent activities from members of a specific club. The authenticated athlete must belong to the requested club in order to hit this endpoint. Pagination is supported. Enhanced Privacy Mode is respected for all activities.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::ClubsApi.new

id = 56 # Integer | The identifier of the club.

opts = { 
  page: 56, # Integer | Page number.
  per_page: 30 # Integer | Number of items per page. Defaults to 30.
}

begin
  #List Club Activities
  result = api_instance.get_club_activities_by_id(id, opts)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling ClubsApi->get_club_activities_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the club. | 
 **page** | **Integer**| Page number. | [optional] 
 **per_page** | **Integer**| Number of items per page. Defaults to 30. | [optional] [default to 30]

### Return type

[**Array&lt;SummaryActivity&gt;**](SummaryActivity.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_club_admins_by_id**
> Array&lt;SummaryAthlete&gt; get_club_admins_by_id(id, opts)

List Club Administrators.

Returns a list of the administrators of a given club.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::ClubsApi.new

id = 56 # Integer | The identifier of the club.

opts = { 
  page: 56, # Integer | Page number.
  per_page: 30 # Integer | Number of items per page. Defaults to 30.
}

begin
  #List Club Administrators.
  result = api_instance.get_club_admins_by_id(id, opts)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling ClubsApi->get_club_admins_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the club. | 
 **page** | **Integer**| Page number. | [optional] 
 **per_page** | **Integer**| Number of items per page. Defaults to 30. | [optional] [default to 30]

### Return type

[**Array&lt;SummaryAthlete&gt;**](SummaryAthlete.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_club_by_id**
> DetailedClub get_club_by_id(id)

Get Club

Returns a given club using its identifier.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::ClubsApi.new

id = 56 # Integer | The identifier of the club.


begin
  #Get Club
  result = api_instance.get_club_by_id(id)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling ClubsApi->get_club_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the club. | 

### Return type

[**DetailedClub**](DetailedClub.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_club_members_by_id**
> Array&lt;SummaryAthlete&gt; get_club_members_by_id(id, opts)

List Club Members

Returns a list of the athletes who are members of a given club.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::ClubsApi.new

id = 56 # Integer | The identifier of the club.

opts = { 
  page: 56, # Integer | Page number.
  per_page: 30 # Integer | Number of items per page. Defaults to 30.
}

begin
  #List Club Members
  result = api_instance.get_club_members_by_id(id, opts)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling ClubsApi->get_club_members_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the club. | 
 **page** | **Integer**| Page number. | [optional] 
 **per_page** | **Integer**| Number of items per page. Defaults to 30. | [optional] [default to 30]

### Return type

[**Array&lt;SummaryAthlete&gt;**](SummaryAthlete.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_logged_in_athlete_clubs**
> Array&lt;SummaryClub&gt; get_logged_in_athlete_clubs(opts)

List Athlete Clubs

Returns a list of the clubs whose membership includes the authenticated athlete.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::ClubsApi.new

opts = { 
  page: 56, # Integer | Page number.
  per_page: 30 # Integer | Number of items per page. Defaults to 30.
}

begin
  #List Athlete Clubs
  result = api_instance.get_logged_in_athlete_clubs(opts)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling ClubsApi->get_logged_in_athlete_clubs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number. | [optional] 
 **per_page** | **Integer**| Number of items per page. Defaults to 30. | [optional] [default to 30]

### Return type

[**Array&lt;SummaryClub&gt;**](SummaryClub.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **join_club_by_id**
> MembershipApplication join_club_by_id(id)

Join Club

Adds the authenticated athlete to the club's membership.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::ClubsApi.new

id = 56 # Integer | The identifier of the club.


begin
  #Join Club
  result = api_instance.join_club_by_id(id)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling ClubsApi->join_club_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the club. | 

### Return type

[**MembershipApplication**](MembershipApplication.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **leave_club_by_id**
> MembershipApplication leave_club_by_id(id)

Leave Club

Removes the authenticated athlete from the club's membership.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::ClubsApi.new

id = 56 # Integer | The identifier of the club.


begin
  #Leave Club
  result = api_instance.leave_club_by_id(id)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling ClubsApi->leave_club_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the club. | 

### Return type

[**MembershipApplication**](MembershipApplication.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



