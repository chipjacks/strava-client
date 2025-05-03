# StravaClient::Comment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of this comment | [optional] |
| **activity_id** | **Integer** | The identifier of the activity this comment is related to | [optional] |
| **text** | **String** | The content of the comment | [optional] |
| **athlete** | [**SummaryAthlete**](SummaryAthlete.md) |  | [optional] |
| **created_at** | **Time** | The time at which this comment was created. | [optional] |

## Example

```ruby
require 'strava-client'

instance = StravaClient::Comment.new(
  id: null,
  activity_id: null,
  text: null,
  athlete: null,
  created_at: null
)
```

