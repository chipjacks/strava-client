# StravaClient::ClubsApi

All URIs are relative to *https://www.strava.com/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_club_activities_by_id**](ClubsApi.md#get_club_activities_by_id) | **GET** /clubs/{id}/activities | List Club Activities |
| [**get_club_admins_by_id**](ClubsApi.md#get_club_admins_by_id) | **GET** /clubs/{id}/admins | List Club Administrators |
| [**get_club_by_id**](ClubsApi.md#get_club_by_id) | **GET** /clubs/{id} | Get Club |
| [**get_club_members_by_id**](ClubsApi.md#get_club_members_by_id) | **GET** /clubs/{id}/members | List Club Members |
| [**get_logged_in_athlete_clubs**](ClubsApi.md#get_logged_in_athlete_clubs) | **GET** /athlete/clubs | List Athlete Clubs |


## get_club_activities_by_id

> <Array<ClubActivity>> get_club_activities_by_id(id, opts)

List Club Activities

Retrieve recent activities from members of a specific club. The authenticated athlete must belong to the requested club in order to hit this endpoint. Pagination is supported. Athlete profile visibility is respected for all activities.

### Examples

```ruby
require 'time'
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::ClubsApi.new
id = 789 # Integer | The identifier of the club.
opts = {
  page: 56, # Integer | Page number. Defaults to 1.
  per_page: 56 # Integer | Number of items per page. Defaults to 30.
}

begin
  # List Club Activities
  result = api_instance.get_club_activities_by_id(id, opts)
  p result
rescue StravaClient::ApiError => e
  puts "Error when calling ClubsApi->get_club_activities_by_id: #{e}"
end
```

#### Using the get_club_activities_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ClubActivity>>, Integer, Hash)> get_club_activities_by_id_with_http_info(id, opts)

```ruby
begin
  # List Club Activities
  data, status_code, headers = api_instance.get_club_activities_by_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ClubActivity>>
rescue StravaClient::ApiError => e
  puts "Error when calling ClubsApi->get_club_activities_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The identifier of the club. |  |
| **page** | **Integer** | Page number. Defaults to 1. | [optional] |
| **per_page** | **Integer** | Number of items per page. Defaults to 30. | [optional][default to 30] |

### Return type

[**Array&lt;ClubActivity&gt;**](ClubActivity.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_club_admins_by_id

> <Array<SummaryAthlete>> get_club_admins_by_id(id, opts)

List Club Administrators

Returns a list of the administrators of a given club.

### Examples

```ruby
require 'time'
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::ClubsApi.new
id = 789 # Integer | The identifier of the club.
opts = {
  page: 56, # Integer | Page number. Defaults to 1.
  per_page: 56 # Integer | Number of items per page. Defaults to 30.
}

begin
  # List Club Administrators
  result = api_instance.get_club_admins_by_id(id, opts)
  p result
rescue StravaClient::ApiError => e
  puts "Error when calling ClubsApi->get_club_admins_by_id: #{e}"
end
```

#### Using the get_club_admins_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SummaryAthlete>>, Integer, Hash)> get_club_admins_by_id_with_http_info(id, opts)

```ruby
begin
  # List Club Administrators
  data, status_code, headers = api_instance.get_club_admins_by_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SummaryAthlete>>
rescue StravaClient::ApiError => e
  puts "Error when calling ClubsApi->get_club_admins_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The identifier of the club. |  |
| **page** | **Integer** | Page number. Defaults to 1. | [optional] |
| **per_page** | **Integer** | Number of items per page. Defaults to 30. | [optional][default to 30] |

### Return type

[**Array&lt;SummaryAthlete&gt;**](SummaryAthlete.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_club_by_id

> <DetailedClub> get_club_by_id(id)

Get Club

Returns a given club using its identifier.

### Examples

```ruby
require 'time'
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::ClubsApi.new
id = 789 # Integer | The identifier of the club.

begin
  # Get Club
  result = api_instance.get_club_by_id(id)
  p result
rescue StravaClient::ApiError => e
  puts "Error when calling ClubsApi->get_club_by_id: #{e}"
end
```

#### Using the get_club_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DetailedClub>, Integer, Hash)> get_club_by_id_with_http_info(id)

```ruby
begin
  # Get Club
  data, status_code, headers = api_instance.get_club_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DetailedClub>
rescue StravaClient::ApiError => e
  puts "Error when calling ClubsApi->get_club_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The identifier of the club. |  |

### Return type

[**DetailedClub**](DetailedClub.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_club_members_by_id

> <Array<ClubAthlete>> get_club_members_by_id(id, opts)

List Club Members

Returns a list of the athletes who are members of a given club.

### Examples

```ruby
require 'time'
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::ClubsApi.new
id = 789 # Integer | The identifier of the club.
opts = {
  page: 56, # Integer | Page number. Defaults to 1.
  per_page: 56 # Integer | Number of items per page. Defaults to 30.
}

begin
  # List Club Members
  result = api_instance.get_club_members_by_id(id, opts)
  p result
rescue StravaClient::ApiError => e
  puts "Error when calling ClubsApi->get_club_members_by_id: #{e}"
end
```

#### Using the get_club_members_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ClubAthlete>>, Integer, Hash)> get_club_members_by_id_with_http_info(id, opts)

```ruby
begin
  # List Club Members
  data, status_code, headers = api_instance.get_club_members_by_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ClubAthlete>>
rescue StravaClient::ApiError => e
  puts "Error when calling ClubsApi->get_club_members_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The identifier of the club. |  |
| **page** | **Integer** | Page number. Defaults to 1. | [optional] |
| **per_page** | **Integer** | Number of items per page. Defaults to 30. | [optional][default to 30] |

### Return type

[**Array&lt;ClubAthlete&gt;**](ClubAthlete.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_logged_in_athlete_clubs

> <Array<SummaryClub>> get_logged_in_athlete_clubs(opts)

List Athlete Clubs

Returns a list of the clubs whose membership includes the authenticated athlete.

### Examples

```ruby
require 'time'
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::ClubsApi.new
opts = {
  page: 56, # Integer | Page number. Defaults to 1.
  per_page: 56 # Integer | Number of items per page. Defaults to 30.
}

begin
  # List Athlete Clubs
  result = api_instance.get_logged_in_athlete_clubs(opts)
  p result
rescue StravaClient::ApiError => e
  puts "Error when calling ClubsApi->get_logged_in_athlete_clubs: #{e}"
end
```

#### Using the get_logged_in_athlete_clubs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SummaryClub>>, Integer, Hash)> get_logged_in_athlete_clubs_with_http_info(opts)

```ruby
begin
  # List Athlete Clubs
  data, status_code, headers = api_instance.get_logged_in_athlete_clubs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SummaryClub>>
rescue StravaClient::ApiError => e
  puts "Error when calling ClubsApi->get_logged_in_athlete_clubs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number. Defaults to 1. | [optional] |
| **per_page** | **Integer** | Number of items per page. Defaults to 30. | [optional][default to 30] |

### Return type

[**Array&lt;SummaryClub&gt;**](SummaryClub.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

