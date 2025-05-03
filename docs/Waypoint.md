# StravaClient::Waypoint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **latlng** | **Array&lt;Float&gt;** | A pair of latitude/longitude coordinates, represented as an array of 2 floating point numbers. | [optional] |
| **target_latlng** | **Array&lt;Float&gt;** | A pair of latitude/longitude coordinates, represented as an array of 2 floating point numbers. | [optional] |
| **categories** | **Array&lt;String&gt;** | Categories that the waypoint belongs to | [optional] |
| **title** | **String** | A title for the waypoint | [optional] |
| **description** | **String** | A description of the waypoint (optional) | [optional] |
| **distance_into_route** | **Integer** | The number meters along the route that the waypoint is located | [optional] |

## Example

```ruby
require 'strava-client'

instance = StravaClient::Waypoint.new(
  latlng: null,
  target_latlng: null,
  categories: null,
  title: null,
  description: null,
  distance_into_route: null
)
```

