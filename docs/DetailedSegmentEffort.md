# StravaClient::DetailedSegmentEffort

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | The unique identifier of this effort | [optional] 
**activity_id** | **Integer** | The unique identifier of the activity related to this effort | [optional] 
**elapsed_time** | **Integer** | The effort&#39;s elapsed time | [optional] 
**start_date** | **DateTime** | The time at which the effort was started. | [optional] 
**start_date_local** | **DateTime** | The time at which the effort was started in the local timezone. | [optional] 
**distance** | **Float** | The effort&#39;s distance in meters | [optional] 
**is_kom** | **BOOLEAN** | Whether this effort is the current best on the leaderboard | [optional] 
**name** | **String** | The name of the segment on which this effort was performed | [optional] 
**activity** | [**MetaActivity**](MetaActivity.md) |  | [optional] 
**athlete** | [**MetaAthlete**](MetaAthlete.md) |  | [optional] 
**moving_time** | **Integer** | The effort&#39;s moving time | [optional] 
**start_index** | **Integer** | The start index of this effort in its activity&#39;s stream | [optional] 
**end_index** | **Integer** | The end index of this effort in its activity&#39;s stream | [optional] 
**average_cadence** | **Float** | The effort&#39;s average cadence | [optional] 
**average_watts** | **Float** | The average wattage of this effort | [optional] 
**device_watts** | **BOOLEAN** | For riding efforts, whether the wattage was reported by a dedicated recording device | [optional] 
**average_heartrate** | **Float** | The heart heart rate of the athlete during this effort | [optional] 
**max_heartrate** | **Float** | The maximum heart rate of the athlete during this effort | [optional] 
**segment** | [**SummarySegment**](SummarySegment.md) |  | [optional] 
**kom_rank** | **Integer** | The rank of the effort on the global leaderboard if it belongs in the top 10 at the time of upload | [optional] 
**pr_rank** | **Integer** | The rank of the effort on the athlete&#39;s leaderboard if it belongs in the top 3 at the time of upload | [optional] 
**hidden** | **BOOLEAN** | Whether this effort should be hidden when viewed within an activity | [optional] 


