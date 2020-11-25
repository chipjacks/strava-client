# StravaClient::Route

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**athlete** | [**SummaryAthlete**](SummaryAthlete.md) |  | [optional] 
**description** | **String** | The description of the route | [optional] 
**distance** | **Float** | The route&#39;s distance, in meters | [optional] 
**elevation_gain** | **Float** | The route&#39;s elevation gain. | [optional] 
**id** | **Integer** | The unique identifier of this route | [optional] 
**id_str** | **String** | The unique identifier of the route in string format | [optional] 
**map** | [**PolylineMap**](PolylineMap.md) |  | [optional] 
**name** | **String** | The name of this route | [optional] 
**private** | **BOOLEAN** | Whether this route is private | [optional] 
**starred** | **BOOLEAN** | Whether this route is starred by the logged-in athlete | [optional] 
**timestamp** | **Integer** | An epoch timestamp of when the route was created | [optional] 
**type** | **Integer** | This route&#39;s type (1 for ride, 2 for runs) | [optional] 
**sub_type** | **Integer** | This route&#39;s sub-type (1 for road, 2 for mountain bike, 3 for cross, 4 for trail, 5 for mixed) | [optional] 
**created_at** | **DateTime** | The time at which the route was created | [optional] 
**updated_at** | **DateTime** | The time at which the route was last updated | [optional] 
**estimated_moving_time** | **Integer** | Estimated time in seconds for the authenticated athlete to complete route | [optional] 
**segments** | [**Array&lt;SummarySegment&gt;**](SummarySegment.md) | The segments traversed by this route | [optional] 


