# StravaClient::DetailedActivity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the activity | [optional] |
| **external_id** | **String** | The identifier provided at upload time | [optional] |
| **upload_id** | **Integer** | The identifier of the upload that resulted in this activity | [optional] |
| **athlete** | [**MetaAthlete**](MetaAthlete.md) |  | [optional] |
| **name** | **String** | The name of the activity | [optional] |
| **distance** | **Float** | The activity&#39;s distance, in meters | [optional] |
| **moving_time** | **Integer** | The activity&#39;s moving time, in seconds | [optional] |
| **elapsed_time** | **Integer** | The activity&#39;s elapsed time, in seconds | [optional] |
| **total_elevation_gain** | **Float** | The activity&#39;s total elevation gain. | [optional] |
| **elev_high** | **Float** | The activity&#39;s highest elevation, in meters | [optional] |
| **elev_low** | **Float** | The activity&#39;s lowest elevation, in meters | [optional] |
| **type** | [**ActivityType**](ActivityType.md) |  | [optional] |
| **sport_type** | [**SportType**](SportType.md) |  | [optional] |
| **start_date** | **Time** | The time at which the activity was started. | [optional] |
| **start_date_local** | **Time** | The time at which the activity was started in the local timezone. | [optional] |
| **timezone** | **String** | The timezone of the activity | [optional] |
| **start_latlng** | **Array&lt;Float&gt;** | A pair of latitude/longitude coordinates, represented as an array of 2 floating point numbers. | [optional] |
| **end_latlng** | **Array&lt;Float&gt;** | A pair of latitude/longitude coordinates, represented as an array of 2 floating point numbers. | [optional] |
| **achievement_count** | **Integer** | The number of achievements gained during this activity | [optional] |
| **kudos_count** | **Integer** | The number of kudos given for this activity | [optional] |
| **comment_count** | **Integer** | The number of comments for this activity | [optional] |
| **athlete_count** | **Integer** | The number of athletes for taking part in a group activity | [optional] |
| **photo_count** | **Integer** | The number of Instagram photos for this activity | [optional] |
| **total_photo_count** | **Integer** | The number of Instagram and Strava photos for this activity | [optional] |
| **map** | [**PolylineMap**](PolylineMap.md) |  | [optional] |
| **trainer** | **Boolean** | Whether this activity was recorded on a training machine | [optional] |
| **commute** | **Boolean** | Whether this activity is a commute | [optional] |
| **manual** | **Boolean** | Whether this activity was created manually | [optional] |
| **private** | **Boolean** | Whether this activity is private | [optional] |
| **flagged** | **Boolean** | Whether this activity is flagged | [optional] |
| **workout_type** | **Integer** | The activity&#39;s workout type | [optional] |
| **upload_id_str** | **String** | The unique identifier of the upload in string format | [optional] |
| **average_speed** | **Float** | The activity&#39;s average speed, in meters per second | [optional] |
| **max_speed** | **Float** | The activity&#39;s max speed, in meters per second | [optional] |
| **has_kudoed** | **Boolean** | Whether the logged-in athlete has kudoed this activity | [optional] |
| **hide_from_home** | **Boolean** | Whether the activity is muted | [optional] |
| **gear_id** | **String** | The id of the gear for the activity | [optional] |
| **kilojoules** | **Float** | The total work done in kilojoules during this activity. Rides only | [optional] |
| **average_watts** | **Float** | Average power output in watts during this activity. Rides only | [optional] |
| **device_watts** | **Boolean** | Whether the watts are from a power meter, false if estimated | [optional] |
| **max_watts** | **Integer** | Rides with power meter data only | [optional] |
| **weighted_average_watts** | **Integer** | Similar to Normalized Power. Rides with power meter data only | [optional] |
| **description** | **String** | The description of the activity | [optional] |
| **photos** | [**PhotosSummary**](PhotosSummary.md) |  | [optional] |
| **gear** | [**SummaryGear**](SummaryGear.md) |  | [optional] |
| **calories** | **Float** | The number of kilocalories consumed during this activity | [optional] |
| **segment_efforts** | [**Array&lt;DetailedSegmentEffort&gt;**](DetailedSegmentEffort.md) |  | [optional] |
| **device_name** | **String** | The name of the device used to record the activity | [optional] |
| **embed_token** | **String** | The token used to embed a Strava activity | [optional] |
| **splits_metric** | [**Array&lt;Split&gt;**](Split.md) | The splits of this activity in metric units (for runs) | [optional] |
| **splits_standard** | [**Array&lt;Split&gt;**](Split.md) | The splits of this activity in imperial units (for runs) | [optional] |
| **laps** | [**Array&lt;Lap&gt;**](Lap.md) |  | [optional] |
| **best_efforts** | [**Array&lt;DetailedSegmentEffort&gt;**](DetailedSegmentEffort.md) |  | [optional] |

## Example

```ruby
require 'strava-client'

instance = StravaClient::DetailedActivity.new(
  id: null,
  external_id: null,
  upload_id: null,
  athlete: null,
  name: null,
  distance: null,
  moving_time: null,
  elapsed_time: null,
  total_elevation_gain: null,
  elev_high: null,
  elev_low: null,
  type: null,
  sport_type: null,
  start_date: null,
  start_date_local: null,
  timezone: null,
  start_latlng: null,
  end_latlng: null,
  achievement_count: null,
  kudos_count: null,
  comment_count: null,
  athlete_count: null,
  photo_count: null,
  total_photo_count: null,
  map: null,
  trainer: null,
  commute: null,
  manual: null,
  private: null,
  flagged: null,
  workout_type: null,
  upload_id_str: null,
  average_speed: null,
  max_speed: null,
  has_kudoed: null,
  hide_from_home: null,
  gear_id: null,
  kilojoules: null,
  average_watts: null,
  device_watts: null,
  max_watts: null,
  weighted_average_watts: null,
  description: null,
  photos: null,
  gear: null,
  calories: null,
  segment_efforts: null,
  device_name: null,
  embed_token: null,
  splits_metric: null,
  splits_standard: null,
  laps: null,
  best_efforts: null
)
```

