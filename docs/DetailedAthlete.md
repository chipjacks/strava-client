# StravaClient::DetailedAthlete

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | The unique identifier of the athlete | [optional] 
**resource_state** | **Integer** | Resource state, indicates level of detail. Possible values: 1 -&gt; \&quot;meta\&quot;, 2 -&gt; \&quot;summary\&quot;, 3 -&gt; \&quot;detail\&quot; | [optional] 
**firstname** | **String** | The athlete&#39;s first name. | [optional] 
**lastname** | **String** | The athlete&#39;s last name. | [optional] 
**profile_medium** | **String** | URL to a 62x62 pixel profile picture. | [optional] 
**profile** | **String** | URL to a 124x124 pixel profile picture. | [optional] 
**city** | **String** | The athlete&#39;s city. | [optional] 
**state** | **String** | The athlete&#39;s state or geographical region. | [optional] 
**country** | **String** | The athlete&#39;s country. | [optional] 
**sex** | **String** | The athlete&#39;s sex. | [optional] 
**premium** | **BOOLEAN** | Deprecated.  Use summit field instead. Whether the athlete has any Summit subscription. | [optional] 
**summit** | **BOOLEAN** | Whether the athlete has any Summit subscription. | [optional] 
**created_at** | **DateTime** | The time at which the athlete was created. | [optional] 
**updated_at** | **DateTime** | The time at which the athlete was last updated. | [optional] 
**follower_count** | **Integer** | The athlete&#39;s follower count. | [optional] 
**friend_count** | **Integer** | The athlete&#39;s friend count. | [optional] 
**measurement_preference** | **String** | The athlete&#39;s preferred unit system. | [optional] 
**ftp** | **Integer** | The athlete&#39;s FTP (Functional Threshold Power). | [optional] 
**weight** | **Float** | The athlete&#39;s weight. | [optional] 
**clubs** | [**Array&lt;SummaryClub&gt;**](SummaryClub.md) | The athlete&#39;s clubs. | [optional] 
**bikes** | [**Array&lt;SummaryGear&gt;**](SummaryGear.md) | The athlete&#39;s bikes. | [optional] 
**shoes** | [**Array&lt;SummaryGear&gt;**](SummaryGear.md) | The athlete&#39;s shoes. | [optional] 


