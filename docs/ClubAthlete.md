# StravaClient::ClubAthlete

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_state** | **Integer** | Resource state, indicates level of detail. Possible values: 1 -&gt; \&quot;meta\&quot;, 2 -&gt; \&quot;summary\&quot;, 3 -&gt; \&quot;detail\&quot; | [optional] |
| **firstname** | **String** | The athlete&#39;s first name. | [optional] |
| **lastname** | **String** | The athlete&#39;s last initial. | [optional] |
| **member** | **String** | The athlete&#39;s member status. | [optional] |
| **admin** | **Boolean** | Whether the athlete is a club admin. | [optional] |
| **owner** | **Boolean** | Whether the athlete is club owner. | [optional] |

## Example

```ruby
require 'strava-client'

instance = StravaClient::ClubAthlete.new(
  resource_state: null,
  firstname: null,
  lastname: null,
  member: null,
  admin: null,
  owner: null
)
```

