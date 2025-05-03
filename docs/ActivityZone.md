# StravaClient::ActivityZone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **Integer** |  | [optional] |
| **distribution_buckets** | [**Array&lt;TimedZoneRange&gt;**](TimedZoneRange.md) | Stores the exclusive ranges representing zones and the time spent in each. | [optional] |
| **type** | **String** |  | [optional] |
| **sensor_based** | **Boolean** |  | [optional] |
| **points** | **Integer** |  | [optional] |
| **custom_zones** | **Boolean** |  | [optional] |
| **max** | **Integer** |  | [optional] |

## Example

```ruby
require 'strava-client'

instance = StravaClient::ActivityZone.new(
  score: null,
  distribution_buckets: null,
  type: null,
  sensor_based: null,
  points: null,
  custom_zones: null,
  max: null
)
```

