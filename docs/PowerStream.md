# StravaClient::PowerStream

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **original_size** | **Integer** | The number of data points in this stream | [optional] |
| **resolution** | **String** | The level of detail (sampling) in which this stream was returned | [optional] |
| **series_type** | **String** | The base series used in the case the stream was downsampled | [optional] |
| **data** | **Array&lt;Integer&gt;** | The sequence of power values for this stream, in watts | [optional] |

## Example

```ruby
require 'strava-client'

instance = StravaClient::PowerStream.new(
  original_size: null,
  resolution: null,
  series_type: null,
  data: null
)
```

