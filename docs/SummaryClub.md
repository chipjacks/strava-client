# StravaClient::SummaryClub

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The club&#39;s unique identifier. | [optional] |
| **resource_state** | **Integer** | Resource state, indicates level of detail. Possible values: 1 -&gt; \&quot;meta\&quot;, 2 -&gt; \&quot;summary\&quot;, 3 -&gt; \&quot;detail\&quot; | [optional] |
| **name** | **String** | The club&#39;s name. | [optional] |
| **profile_medium** | **String** | URL to a 60x60 pixel profile picture. | [optional] |
| **cover_photo** | **String** | URL to a ~1185x580 pixel cover photo. | [optional] |
| **cover_photo_small** | **String** | URL to a ~360x176  pixel cover photo. | [optional] |
| **sport_type** | **String** | Deprecated. Prefer to use activity_types. | [optional] |
| **activity_types** | [**Array&lt;ActivityType&gt;**](ActivityType.md) | The activity types that count for a club. This takes precedence over sport_type. | [optional] |
| **city** | **String** | The club&#39;s city. | [optional] |
| **state** | **String** | The club&#39;s state or geographical region. | [optional] |
| **country** | **String** | The club&#39;s country. | [optional] |
| **private** | **Boolean** | Whether the club is private. | [optional] |
| **member_count** | **Integer** | The club&#39;s member count. | [optional] |
| **featured** | **Boolean** | Whether the club is featured or not. | [optional] |
| **verified** | **Boolean** | Whether the club is verified or not. | [optional] |
| **url** | **String** | The club&#39;s vanity URL. | [optional] |

## Example

```ruby
require 'strava-client'

instance = StravaClient::SummaryClub.new(
  id: null,
  resource_state: null,
  name: null,
  profile_medium: null,
  cover_photo: null,
  cover_photo_small: null,
  sport_type: null,
  activity_types: null,
  city: null,
  state: null,
  country: null,
  private: null,
  member_count: null,
  featured: null,
  verified: null,
  url: null
)
```

