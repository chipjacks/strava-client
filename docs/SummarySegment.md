# StravaClient::SummarySegment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | The unique identifier of this segment | [optional] 
**name** | **String** | The name of this segment | [optional] 
**activity_type** | **String** |  | [optional] 
**distance** | **Float** | The segment&#39;s distance, in meters | [optional] 
**average_grade** | **Float** | The segment&#39;s average grade, in percents | [optional] 
**maximum_grade** | **Float** | The segments&#39;s maximum grade, in percents | [optional] 
**elevation_high** | **Float** | The segments&#39;s highest elevation, in meters | [optional] 
**elevation_low** | **Float** | The segments&#39;s lowest elevation, in meters | [optional] 
**start_latlng** | [**LatLng**](LatLng.md) |  | [optional] 
**end_latlng** | [**LatLng**](LatLng.md) |  | [optional] 
**climb_category** | **Integer** | The category of the climb [0, 5]. Higher is harder ie. 5 is Hors catégorie, 0 is uncategorized in climb_category. | [optional] 
**city** | **String** | The segments&#39;s city. | [optional] 
**state** | **String** | The segments&#39;s state or geographical region. | [optional] 
**country** | **String** | The segment&#39;s country. | [optional] 
**private** | **BOOLEAN** | Whether this segment is private. | [optional] 
**athlete_pr_effort** | [**SummarySegmentEffort**](SummarySegmentEffort.md) |  | [optional] 
**athlete_segment_stats** | [**SummaryPRSegmentEffort**](SummaryPRSegmentEffort.md) |  | [optional] 


