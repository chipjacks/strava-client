# StravaClient::Upload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the upload | [optional] |
| **id_str** | **String** | The unique identifier of the upload in string format | [optional] |
| **external_id** | **String** | The external identifier of the upload | [optional] |
| **error** | **String** | The error associated with this upload | [optional] |
| **status** | **String** | The status of this upload | [optional] |
| **activity_id** | **Integer** | The identifier of the activity this upload resulted into | [optional] |

## Example

```ruby
require 'strava-client'

instance = StravaClient::Upload.new(
  id: null,
  id_str: null,
  external_id: null,
  error: null,
  status: null,
  activity_id: null
)
```

