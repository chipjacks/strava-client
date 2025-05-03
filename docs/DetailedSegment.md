# StravaClient::DetailedSegment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of this segment | [optional] |
| **name** | **String** | The name of this segment | [optional] |
| **activity_type** | **String** |  | [optional] |
| **distance** | **Float** | The segment&#39;s distance, in meters | [optional] |
| **average_grade** | **Float** | The segment&#39;s average grade, in percents | [optional] |
| **maximum_grade** | **Float** | The segments&#39;s maximum grade, in percents | [optional] |
| **elevation_high** | **Float** | The segments&#39;s highest elevation, in meters | [optional] |
| **elevation_low** | **Float** | The segments&#39;s lowest elevation, in meters | [optional] |
| **start_latlng** | **Array&lt;Float&gt;** | A pair of latitude/longitude coordinates, represented as an array of 2 floating point numbers. | [optional] |
| **end_latlng** | **Array&lt;Float&gt;** | A pair of latitude/longitude coordinates, represented as an array of 2 floating point numbers. | [optional] |
| **climb_category** | **Integer** | The category of the climb [0, 5]. Higher is harder ie. 5 is Hors catégorie, 0 is uncategorized in climb_category. | [optional] |
| **city** | **String** | The segments&#39;s city. | [optional] |
| **state** | **String** | The segments&#39;s state or geographical region. | [optional] |
| **country** | **String** | The segment&#39;s country. | [optional] |
| **private** | **Boolean** | Whether this segment is private. | [optional] |
| **athlete_pr_effort** | [**SummaryPRSegmentEffort**](SummaryPRSegmentEffort.md) |  | [optional] |
| **athlete_segment_stats** | [**SummarySegmentEffort**](SummarySegmentEffort.md) |  | [optional] |
| **created_at** | **Time** | The time at which the segment was created. | [optional] |
| **updated_at** | **Time** | The time at which the segment was last updated. | [optional] |
| **total_elevation_gain** | **Float** | The segment&#39;s total elevation gain. | [optional] |
| **map** | [**PolylineMap**](PolylineMap.md) |  | [optional] |
| **effort_count** | **Integer** | The total number of efforts for this segment | [optional] |
| **athlete_count** | **Integer** | The number of unique athletes who have an effort for this segment | [optional] |
| **hazardous** | **Boolean** | Whether this segment is considered hazardous | [optional] |
| **star_count** | **Integer** | The number of stars for this segment | [optional] |

## Example

```ruby
require 'strava-client'

instance = StravaClient::DetailedSegment.new(
  id: null,
  name: null,
  activity_type: null,
  distance: null,
  average_grade: null,
  maximum_grade: null,
  elevation_high: null,
  elevation_low: null,
  start_latlng: null,
  end_latlng: null,
  climb_category: null,
  city: null,
  state: null,
  country: null,
  private: null,
  athlete_pr_effort: null,
  athlete_segment_stats: null,
  created_at: null,
  updated_at: null,
  total_elevation_gain: null,
  map: null,
  effort_count: null,
  athlete_count: null,
  hazardous: null,
  star_count: null
)
```

