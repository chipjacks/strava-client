# StravaClient::UploadsApi

All URIs are relative to *https://www.strava.com/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_upload**](UploadsApi.md#create_upload) | **POST** /uploads | Upload Activity
[**get_upload_by_id**](UploadsApi.md#get_upload_by_id) | **GET** /uploads/{uploadId} | Get Upload


# **create_upload**
> Upload create_upload(opts)

Upload Activity

Uploads a new data file to create an activity from. Requires activity:write scope.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::UploadsApi.new

opts = { 
  file: File.new("/path/to/file.txt"), # File | The uploaded file.
  name: "name_example", # String | The desired name of the resulting activity.
  description: "description_example", # String | The desired description of the resulting activity.
  trainer: "trainer_example", # String | Whether the resulting activity should be marked as having been performed on a trainer.
  commute: "commute_example", # String | Whether the resulting activity should be tagged as a commute.
  data_type: "data_type_example", # String | The format of the uploaded file.
  external_id: "external_id_example" # String | The desired external identifier of the resulting activity.
}

begin
  #Upload Activity
  result = api_instance.create_upload(opts)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling UploadsApi->create_upload: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| The uploaded file. | [optional] 
 **name** | **String**| The desired name of the resulting activity. | [optional] 
 **description** | **String**| The desired description of the resulting activity. | [optional] 
 **trainer** | **String**| Whether the resulting activity should be marked as having been performed on a trainer. | [optional] 
 **commute** | **String**| Whether the resulting activity should be tagged as a commute. | [optional] 
 **data_type** | **String**| The format of the uploaded file. | [optional] 
 **external_id** | **String**| The desired external identifier of the resulting activity. | [optional] 

### Return type

[**Upload**](Upload.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **get_upload_by_id**
> Upload get_upload_by_id(upload_id)

Get Upload

Returns an upload for a given identifier. Requires activity:write scope.

### Example
```ruby
# load the gem
require 'strava-client'
# setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::UploadsApi.new

upload_id = 789 # Integer | The identifier of the upload.


begin
  #Get Upload
  result = api_instance.get_upload_by_id(upload_id)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling UploadsApi->get_upload_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **upload_id** | **Integer**| The identifier of the upload. | 

### Return type

[**Upload**](Upload.md)

### Authorization

[strava_oauth](../README.md#strava_oauth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



