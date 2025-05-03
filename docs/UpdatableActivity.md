# StravaClient::UpdatableActivity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commute** | **Boolean** | Whether this activity is a commute | [optional] |
| **trainer** | **Boolean** | Whether this activity was recorded on a training machine | [optional] |
| **hide_from_home** | **Boolean** | Whether this activity is muted | [optional] |
| **description** | **String** | The description of the activity | [optional] |
| **name** | **String** | The name of the activity | [optional] |
| **type** | [**ActivityType**](ActivityType.md) |  | [optional] |
| **sport_type** | [**SportType**](SportType.md) |  | [optional] |
| **gear_id** | **String** | Identifier for the gear associated with the activity. ‘none’ clears gear from activity | [optional] |

## Example

```ruby
require 'strava-client'

instance = StravaClient::UpdatableActivity.new(
  commute: null,
  trainer: null,
  hide_from_home: null,
  description: null,
  name: null,
  type: null,
  sport_type: null,
  gear_id: null
)
```

