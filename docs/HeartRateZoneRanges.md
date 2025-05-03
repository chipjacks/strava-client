# StravaClient::HeartRateZoneRanges

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_zones** | **Boolean** | Whether the athlete has set their own custom heart rate zones | [optional] |
| **zones** | [**Array&lt;ZoneRange&gt;**](ZoneRange.md) |  | [optional] |

## Example

```ruby
require 'strava-client'

instance = StravaClient::HeartRateZoneRanges.new(
  custom_zones: null,
  zones: null
)
```

