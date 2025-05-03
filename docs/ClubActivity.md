# StravaClient::ClubActivity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **athlete** | [**MetaAthlete**](MetaAthlete.md) |  | [optional] |
| **name** | **String** | The name of the activity | [optional] |
| **distance** | **Float** | The activity&#39;s distance, in meters | [optional] |
| **moving_time** | **Integer** | The activity&#39;s moving time, in seconds | [optional] |
| **elapsed_time** | **Integer** | The activity&#39;s elapsed time, in seconds | [optional] |
| **total_elevation_gain** | **Float** | The activity&#39;s total elevation gain. | [optional] |
| **type** | [**ActivityType**](ActivityType.md) |  | [optional] |
| **sport_type** | [**SportType**](SportType.md) |  | [optional] |
| **workout_type** | **Integer** | The activity&#39;s workout type | [optional] |

## Example

```ruby
require 'strava-client'

instance = StravaClient::ClubActivity.new(
  athlete: null,
  name: null,
  distance: null,
  moving_time: null,
  elapsed_time: null,
  total_elevation_gain: null,
  type: null,
  sport_type: null,
  workout_type: null
)
```

