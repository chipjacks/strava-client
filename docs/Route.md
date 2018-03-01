# StravaClient::Route

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**athlete** | [**SummaryAthlete**](SummaryAthlete.md) |  | [optional] 
**description** | **String** | The description of the route | [optional] 
**distance** | **Float** | The route&#39;s distance, in meters | [optional] 
**elevation_gain** | **Float** | The route&#39;s elevation gain. | [optional] 
**id** | **Integer** | The unique identifier of this route | [optional] 
**map** | [**PolylineMap**](PolylineMap.md) |  | [optional] 
**name** | **String** | The name of this route | [optional] 
**private** | **BOOLEAN** | Whether this route is private | [optional] 
**starred** | **BOOLEAN** | Whether this route is starred by the logged-in athlete | [optional] 
**timestamp** | **Integer** |  | [optional] 
**type** | **Integer** | This route&#39;s type (1 for ride, 2 for runs) | [optional] 
**sub_type** | **Integer** | This route&#39;s sub-type (1 for road, 2 for mountain bike, 3 for cross, 4 for trail, 5 for mixed) | [optional] 
**segments** | [**Array&lt;SummarySegment&gt;**](SummarySegment.md) | The segments traversed by this route | [optional] 
**directions** | [**Array&lt;RouteDirection&gt;**](RouteDirection.md) | The directions of this route | [optional] 


