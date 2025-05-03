# StravaClient::StreamSet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time** | [**TimeStream**](TimeStream.md) |  | [optional] |
| **distance** | [**DistanceStream**](DistanceStream.md) |  | [optional] |
| **latlng** | [**LatLngStream**](LatLngStream.md) |  | [optional] |
| **altitude** | [**AltitudeStream**](AltitudeStream.md) |  | [optional] |
| **velocity_smooth** | [**SmoothVelocityStream**](SmoothVelocityStream.md) |  | [optional] |
| **heartrate** | [**HeartrateStream**](HeartrateStream.md) |  | [optional] |
| **cadence** | [**CadenceStream**](CadenceStream.md) |  | [optional] |
| **watts** | [**PowerStream**](PowerStream.md) |  | [optional] |
| **temp** | [**TemperatureStream**](TemperatureStream.md) |  | [optional] |
| **moving** | [**MovingStream**](MovingStream.md) |  | [optional] |
| **grade_smooth** | [**SmoothGradeStream**](SmoothGradeStream.md) |  | [optional] |

## Example

```ruby
require 'strava-client'

instance = StravaClient::StreamSet.new(
  time: null,
  distance: null,
  latlng: null,
  altitude: null,
  velocity_smooth: null,
  heartrate: null,
  cadence: null,
  watts: null,
  temp: null,
  moving: null,
  grade_smooth: null
)
```

