# StravaClient::SummaryPRSegmentEffort

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pr_activity_id** | **Integer** | The unique identifier of the activity related to the PR effort. | [optional] |
| **pr_elapsed_time** | **Integer** | The elapsed time ot the PR effort. | [optional] |
| **pr_date** | **Time** | The time at which the PR effort was started. | [optional] |
| **effort_count** | **Integer** | Number of efforts by the authenticated athlete on this segment. | [optional] |

## Example

```ruby
require 'strava-client'

instance = StravaClient::SummaryPRSegmentEffort.new(
  pr_activity_id: null,
  pr_elapsed_time: null,
  pr_date: null,
  effort_count: null
)
```

