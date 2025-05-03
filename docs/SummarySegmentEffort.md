# StravaClient::SummarySegmentEffort

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of this effort | [optional] |
| **activity_id** | **Integer** | The unique identifier of the activity related to this effort | [optional] |
| **elapsed_time** | **Integer** | The effort&#39;s elapsed time | [optional] |
| **start_date** | **Time** | The time at which the effort was started. | [optional] |
| **start_date_local** | **Time** | The time at which the effort was started in the local timezone. | [optional] |
| **distance** | **Float** | The effort&#39;s distance in meters | [optional] |
| **is_kom** | **Boolean** | Whether this effort is the current best on the leaderboard | [optional] |

## Example

```ruby
require 'strava-client'

instance = StravaClient::SummarySegmentEffort.new(
  id: null,
  activity_id: null,
  elapsed_time: null,
  start_date: null,
  start_date_local: null,
  distance: null,
  is_kom: null
)
```

