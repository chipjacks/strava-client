# StravaClient::ActivitiesApi

All URIs are relative to *https://www.strava.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_activity**](ActivitiesApi.md#create_activity) | **POST** /activities | Create an Activity
[**get_activity_by_id**](ActivitiesApi.md#get_activity_by_id) | **GET** /activities | Get Activity
[**get_comments_by_activity_id**](ActivitiesApi.md#get_comments_by_activity_id) | **GET** /activities/{id}/comments | List Activity Comments
[**get_kudoers_by_activity_id**](ActivitiesApi.md#get_kudoers_by_activity_id) | **GET** /activities/{id}/kudos | List Activity Kudoers
[**get_laps_by_activity_id**](ActivitiesApi.md#get_laps_by_activity_id) | **GET** /activities/{id}/laps | List Activity Laps
[**get_logged_in_athlete_activities**](ActivitiesApi.md#get_logged_in_athlete_activities) | **GET** /athlete/activities | List Athlete Activities
[**get_zones_by_activity_id**](ActivitiesApi.md#get_zones_by_activity_id) | **GET** /activities/{id}/zones | Get Activity Zones
[**update_activity_by_id**](ActivitiesApi.md#update_activity_by_id) | **PUT** /activities | Update Activity


# **create_activity**
> DetailedActivity create_activity(name, type, start_date_local, elapsed_time, opts)

Create an Activity

Creates a manual activity for an athlete. Requires write permissions, as requested during the authorization process.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::ActivitiesApi.new

name = "name_example" # String | The name of the activity.

type = "type_example" # String | Type of activity. For example - Run, Ride etc.

start_date_local = "start_date_local_example" # String | ISO 8601 formatted date time.

elapsed_time = 56 # Integer | In seconds.

opts = { 
  description: "description_example", # String | Description of the activity.
  distance: "distance_example", # String | In meters.
  private: 56, # Integer | set to 1 to mark the resulting activity as private, ‘view_private’ permissions will be necessary to view the activity. If not specified, set according to the athlete’s privacy setting (recommended).
  trainer: 56, # Integer | Set to 1 to mark as a trainer activity.
  photo_ids: "photo_ids_example", # String | List of native photo ids to attach to the activity.
  commute: 56 # Integer | Set to 1 to mark as commute.
}

begin
  #Create an Activity
  result = api_instance.create_activity(name, type, start_date_local, elapsed_time, opts)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling ActivitiesApi->create_activity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The name of the activity. | 
 **type** | **String**| Type of activity. For example - Run, Ride etc. | 
 **start_date_local** | **String**| ISO 8601 formatted date time. | 
 **elapsed_time** | **Integer**| In seconds. | 
 **description** | **String**| Description of the activity. | [optional] 
 **distance** | **String**| In meters. | [optional] 
 **private** | **Integer**| set to 1 to mark the resulting activity as private, ‘view_private’ permissions will be necessary to view the activity. If not specified, set according to the athlete’s privacy setting (recommended). | [optional] 
 **trainer** | **Integer**| Set to 1 to mark as a trainer activity. | [optional] 
 **photo_ids** | **String**| List of native photo ids to attach to the activity. | [optional] 
 **commute** | **Integer**| Set to 1 to mark as commute. | [optional] 

### Return type

[**DetailedActivity**](DetailedActivity.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_activity_by_id**
> DetailedActivity get_activity_by_id(id, opts)

Get Activity

Returns the given activity that is owned by the authenticated athlete.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::ActivitiesApi.new

id = 789 # Integer | The identifier of the activity.

opts = { 
  include_all_efforts: true # BOOLEAN | To include all segments efforts.
}

begin
  #Get Activity
  result = api_instance.get_activity_by_id(id, opts)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling ActivitiesApi->get_activity_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the activity. | 
 **include_all_efforts** | **BOOLEAN**| To include all segments efforts. | [optional] 

### Return type

[**DetailedActivity**](DetailedActivity.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_comments_by_activity_id**
> Array&lt;Comment&gt; get_comments_by_activity_id(id, opts)

List Activity Comments

Returns the comments on the given activity.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::ActivitiesApi.new

id = 789 # Integer | The identifier of the activity.

opts = { 
  page: 56, # Integer | Page number.
  per_page: 30 # Integer | Number of items per page. Defaults to 30.
}

begin
  #List Activity Comments
  result = api_instance.get_comments_by_activity_id(id, opts)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling ActivitiesApi->get_comments_by_activity_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the activity. | 
 **page** | **Integer**| Page number. | [optional] 
 **per_page** | **Integer**| Number of items per page. Defaults to 30. | [optional] [default to 30]

### Return type

[**Array&lt;Comment&gt;**](Comment.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_kudoers_by_activity_id**
> Array&lt;SummaryAthlete&gt; get_kudoers_by_activity_id(id, opts)

List Activity Kudoers

Returns the athletes who kudoed an activity identified by an identifier.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::ActivitiesApi.new

id = 56 # Integer | The identifier of the activity.

opts = { 
  page: 56, # Integer | Page number.
  per_page: 30 # Integer | Number of items per page. Defaults to 30.
}

begin
  #List Activity Kudoers
  result = api_instance.get_kudoers_by_activity_id(id, opts)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling ActivitiesApi->get_kudoers_by_activity_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the activity. | 
 **page** | **Integer**| Page number. | [optional] 
 **per_page** | **Integer**| Number of items per page. Defaults to 30. | [optional] [default to 30]

### Return type

[**Array&lt;SummaryAthlete&gt;**](SummaryAthlete.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_laps_by_activity_id**
> Array&lt;Lap&gt; get_laps_by_activity_id(id)

List Activity Laps

Returns the laps of an activity identified by an identifier.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::ActivitiesApi.new

id = 789 # Integer | The identifier of the activity.


begin
  #List Activity Laps
  result = api_instance.get_laps_by_activity_id(id)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling ActivitiesApi->get_laps_by_activity_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the activity. | 

### Return type

[**Array&lt;Lap&gt;**](Lap.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_logged_in_athlete_activities**
> Array&lt;SummaryActivity&gt; get_logged_in_athlete_activities(opts)

List Athlete Activities

Returns the activities of an athlete for a specific identifier.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::ActivitiesApi.new

opts = { 
  before: 56, # Integer | An epoch timestamp to use for filtering activities that have taken place before a certain time.
  after: 56, # Integer | An epoch timestamp to use for filtering activities that have taken place after a certain time.
  page: 56, # Integer | Page number.
  per_page: 30 # Integer | Number of items per page. Defaults to 30.
}

begin
  #List Athlete Activities
  result = api_instance.get_logged_in_athlete_activities(opts)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling ActivitiesApi->get_logged_in_athlete_activities: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **before** | **Integer**| An epoch timestamp to use for filtering activities that have taken place before a certain time. | [optional] 
 **after** | **Integer**| An epoch timestamp to use for filtering activities that have taken place after a certain time. | [optional] 
 **page** | **Integer**| Page number. | [optional] 
 **per_page** | **Integer**| Number of items per page. Defaults to 30. | [optional] [default to 30]

### Return type

[**Array&lt;SummaryActivity&gt;**](SummaryActivity.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_zones_by_activity_id**
> Array&lt;ActivityZone&gt; get_zones_by_activity_id(id)

Get Activity Zones

Premium Feature. Returns the zones of a given activity.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::ActivitiesApi.new

id = 56 # Integer | The identifier of the activity.


begin
  #Get Activity Zones
  result = api_instance.get_zones_by_activity_id(id)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling ActivitiesApi->get_zones_by_activity_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the activity. | 

### Return type

[**Array&lt;ActivityZone&gt;**](ActivityZone.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_activity_by_id**
> DetailedActivity update_activity_by_id(id, opts)

Update Activity

Updates the given activity that is owned by the authenticated athlete.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::ActivitiesApi.new

id = 789 # Integer | The identifier of the activity.

opts = { 
  body: StravaClient::UpdatableActivity.new # UpdatableActivity | 
}

begin
  #Update Activity
  result = api_instance.update_activity_by_id(id, opts)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling ActivitiesApi->update_activity_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The identifier of the activity. | 
 **body** | [**UpdatableActivity**](UpdatableActivity.md)|  | [optional] 

### Return type

[**DetailedActivity**](DetailedActivity.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



