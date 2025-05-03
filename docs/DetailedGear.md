# StravaClient::DetailedGear

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The gear&#39;s unique identifier. | [optional] |
| **resource_state** | **Integer** | Resource state, indicates level of detail. Possible values: 2 -&gt; \&quot;summary\&quot;, 3 -&gt; \&quot;detail\&quot; | [optional] |
| **primary** | **Boolean** | Whether this gear&#39;s is the owner&#39;s default one. | [optional] |
| **name** | **String** | The gear&#39;s name. | [optional] |
| **distance** | **Float** | The distance logged with this gear. | [optional] |
| **brand_name** | **String** | The gear&#39;s brand name. | [optional] |
| **model_name** | **String** | The gear&#39;s model name. | [optional] |
| **frame_type** | **Integer** | The gear&#39;s frame type (bike only). | [optional] |
| **description** | **String** | The gear&#39;s description. | [optional] |

## Example

```ruby
require 'strava-client'

instance = StravaClient::DetailedGear.new(
  id: null,
  resource_state: null,
  primary: null,
  name: null,
  distance: null,
  brand_name: null,
  model_name: null,
  frame_type: null,
  description: null
)
```

