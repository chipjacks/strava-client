# StravaClient::Zones

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **heart_rate** | [**HeartRateZoneRanges**](HeartRateZoneRanges.md) |  | [optional] |
| **power** | [**PowerZoneRanges**](PowerZoneRanges.md) |  | [optional] |

## Example

```ruby
require 'strava-client'

instance = StravaClient::Zones.new(
  heart_rate: null,
  power: null
)
```

