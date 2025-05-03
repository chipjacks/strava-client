# StravaClient::ActivityStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **biggest_ride_distance** | **Float** | The longest distance ridden by the athlete. | [optional] |
| **biggest_climb_elevation_gain** | **Float** | The highest climb ridden by the athlete. | [optional] |
| **recent_ride_totals** | [**ActivityTotal**](ActivityTotal.md) |  | [optional] |
| **recent_run_totals** | [**ActivityTotal**](ActivityTotal.md) |  | [optional] |
| **recent_swim_totals** | [**ActivityTotal**](ActivityTotal.md) |  | [optional] |
| **ytd_ride_totals** | [**ActivityTotal**](ActivityTotal.md) |  | [optional] |
| **ytd_run_totals** | [**ActivityTotal**](ActivityTotal.md) |  | [optional] |
| **ytd_swim_totals** | [**ActivityTotal**](ActivityTotal.md) |  | [optional] |
| **all_ride_totals** | [**ActivityTotal**](ActivityTotal.md) |  | [optional] |
| **all_run_totals** | [**ActivityTotal**](ActivityTotal.md) |  | [optional] |
| **all_swim_totals** | [**ActivityTotal**](ActivityTotal.md) |  | [optional] |

## Example

```ruby
require 'strava-client'

instance = StravaClient::ActivityStats.new(
  biggest_ride_distance: null,
  biggest_climb_elevation_gain: null,
  recent_ride_totals: null,
  recent_run_totals: null,
  recent_swim_totals: null,
  ytd_ride_totals: null,
  ytd_run_totals: null,
  ytd_swim_totals: null,
  all_ride_totals: null,
  all_run_totals: null,
  all_swim_totals: null
)
```

