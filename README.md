# strava-client

StravaClient - the Ruby gem for the Strava API v3

Strava API

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 3.0.0
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build strava-client.gemspec
```

Then either install the gem locally:

```shell
gem install ./strava-client-1.0.0.gem
```
(for development, run `gem install --dev ./strava-client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'strava-client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'strava-client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'strava-client'

# Setup authorization
StravaClient.configure do |config|
  # Configure OAuth2 access token for authorization: strava_oauth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = StravaClient::ActivitiesApi.new

name = "name_example" # String | The name of the activity.

type = "type_example" # String | Type of activity. For example - Run, Ride etc.

start_date_local = "start_date_local_example" # String | ISO 8601 formatted date time.

elapsed_time = 56 # Integer | In seconds.

opts = { 
  description: "description_example", # String | Description of the activity.
  distance: "distance_example", # String | In meters.
  private: 56, # Integer | set to 1 to mark the resulting activity as private, ‘view_private’ permissions will be necessary to view the activity. If not specified, set according to the athlete’s privacy setting (recommended).
  trainer: 56, # Integer | Set to 1 to mark as a trainer activity.
  photo_ids: "photo_ids_example", # String | List of native photo ids to attach to the activity.
  commute: 56 # Integer | Set to 1 to mark as commute.
}

begin
  #Create an Activity
  result = api_instance.create_activity(name, type, start_date_local, elapsed_time, opts)
  p result
rescue StravaClient::ApiError => e
  puts "Exception when calling ActivitiesApi->create_activity: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://www.strava.com/api/v3*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*StravaClient::ActivitiesApi* | [**create_activity**](docs/ActivitiesApi.md#create_activity) | **POST** /activities | Create an Activity
*StravaClient::ActivitiesApi* | [**get_activity_by_id**](docs/ActivitiesApi.md#get_activity_by_id) | **GET** /activities | Get Activity
*StravaClient::ActivitiesApi* | [**get_comments_by_activity_id**](docs/ActivitiesApi.md#get_comments_by_activity_id) | **GET** /activities/{id}/comments | List Activity Comments
*StravaClient::ActivitiesApi* | [**get_kudoers_by_activity_id**](docs/ActivitiesApi.md#get_kudoers_by_activity_id) | **GET** /activities/{id}/kudos | List Activity Kudoers
*StravaClient::ActivitiesApi* | [**get_laps_by_activity_id**](docs/ActivitiesApi.md#get_laps_by_activity_id) | **GET** /activities/{id}/laps | List Activity Laps
*StravaClient::ActivitiesApi* | [**get_logged_in_athlete_activities**](docs/ActivitiesApi.md#get_logged_in_athlete_activities) | **GET** /athlete/activities | List Athlete Activities
*StravaClient::ActivitiesApi* | [**get_zones_by_activity_id**](docs/ActivitiesApi.md#get_zones_by_activity_id) | **GET** /activities/{id}/zones | Get Activity Zones
*StravaClient::ActivitiesApi* | [**update_activity_by_id**](docs/ActivitiesApi.md#update_activity_by_id) | **PUT** /activities | Update Activity
*StravaClient::AthletesApi* | [**get_logged_in_athlete**](docs/AthletesApi.md#get_logged_in_athlete) | **GET** /athlete | Get Authenticated Athlete
*StravaClient::AthletesApi* | [**get_logged_in_athlete_zones**](docs/AthletesApi.md#get_logged_in_athlete_zones) | **GET** /athlete/zones | Get Zones
*StravaClient::AthletesApi* | [**get_stats**](docs/AthletesApi.md#get_stats) | **GET** /athletes/{id}/stats | Get Athlete Stats
*StravaClient::AthletesApi* | [**update_logged_in_athlete**](docs/AthletesApi.md#update_logged_in_athlete) | **PUT** /athlete | Update Athlete
*StravaClient::ClubsApi* | [**get_club_activities_by_id**](docs/ClubsApi.md#get_club_activities_by_id) | **GET** /clubs/{id}/activities | List Club Activities
*StravaClient::ClubsApi* | [**get_club_admins_by_id**](docs/ClubsApi.md#get_club_admins_by_id) | **GET** /clubs/{id}/admins | List Club Administrators.
*StravaClient::ClubsApi* | [**get_club_by_id**](docs/ClubsApi.md#get_club_by_id) | **GET** /clubs/{id} | Get Club
*StravaClient::ClubsApi* | [**get_club_members_by_id**](docs/ClubsApi.md#get_club_members_by_id) | **GET** /clubs/{id}/members | List Club Members
*StravaClient::ClubsApi* | [**get_logged_in_athlete_clubs**](docs/ClubsApi.md#get_logged_in_athlete_clubs) | **GET** /athlete/clubs | List Athlete Clubs
*StravaClient::ClubsApi* | [**join_club_by_id**](docs/ClubsApi.md#join_club_by_id) | **POST** /clubs/{id}/join | Join Club
*StravaClient::ClubsApi* | [**leave_club_by_id**](docs/ClubsApi.md#leave_club_by_id) | **POST** /clubs/{id}/leave | Leave Club
*StravaClient::GearsApi* | [**get_gear_by_id**](docs/GearsApi.md#get_gear_by_id) | **GET** /gear/{id} | Get Equipment
*StravaClient::RoutesApi* | [**get_route_by_id**](docs/RoutesApi.md#get_route_by_id) | **GET** /routes/{id} | Get Route
*StravaClient::RoutesApi* | [**get_routes_by_athlete_id**](docs/RoutesApi.md#get_routes_by_athlete_id) | **GET** /athletes/{id}/routes | List Athlete Routes
*StravaClient::RunningRacesApi* | [**get_running_race_by_id**](docs/RunningRacesApi.md#get_running_race_by_id) | **GET** /running_races/{id} | Get Running Race
*StravaClient::RunningRacesApi* | [**get_running_races**](docs/RunningRacesApi.md#get_running_races) | **GET** /running_races | List Running Races
*StravaClient::SegmentEffortsApi* | [**get_efforts_by_segment_id**](docs/SegmentEffortsApi.md#get_efforts_by_segment_id) | **GET** /segments/{id}/all_efforts | List Segment Efforts
*StravaClient::SegmentEffortsApi* | [**get_segment_effort_by_id**](docs/SegmentEffortsApi.md#get_segment_effort_by_id) | **GET** /segment_efforts/{id} | Get Segment Effort
*StravaClient::SegmentsApi* | [**explore_segments**](docs/SegmentsApi.md#explore_segments) | **GET** /segments/explore | Explore segments
*StravaClient::SegmentsApi* | [**get_leaderboard_by_segment_id**](docs/SegmentsApi.md#get_leaderboard_by_segment_id) | **GET** /segments/{id}/leaderboard | Get Segment Leaderboard
*StravaClient::SegmentsApi* | [**get_logged_in_athlete_starred_segments**](docs/SegmentsApi.md#get_logged_in_athlete_starred_segments) | **GET** /segments/starred | List Starred Segments
*StravaClient::SegmentsApi* | [**get_segment_by_id**](docs/SegmentsApi.md#get_segment_by_id) | **GET** /segments/{id} | Get Segment
*StravaClient::SegmentsApi* | [**star_segment**](docs/SegmentsApi.md#star_segment) | **PUT** /segments/{id}/starred | Star Segment
*StravaClient::StreamsApi* | [**get_activity_streams**](docs/StreamsApi.md#get_activity_streams) | **GET** /activities/{id}/streams | Get Activity Streams
*StravaClient::StreamsApi* | [**get_segment_effort_streams**](docs/StreamsApi.md#get_segment_effort_streams) | **GET** /segment_efforts/{id}/streams | Get segment effort streams
*StravaClient::StreamsApi* | [**get_segment_streams**](docs/StreamsApi.md#get_segment_streams) | **GET** /segments/{id}/streams | Get Segment Streams
*StravaClient::UploadsApi* | [**create_upload**](docs/UploadsApi.md#create_upload) | **POST** /uploads | Upload Activity
*StravaClient::UploadsApi* | [**get_upload_by_id**](docs/UploadsApi.md#get_upload_by_id) | **GET** /uploads/{uploadId} | Get Upload


## Documentation for Models

 - [StravaClient::ActivityStats](docs/ActivityStats.md)
 - [StravaClient::ActivityTotal](docs/ActivityTotal.md)
 - [StravaClient::ActivityType](docs/ActivityType.md)
 - [StravaClient::ActivityZone](docs/ActivityZone.md)
 - [StravaClient::BaseStream](docs/BaseStream.md)
 - [StravaClient::Comment](docs/Comment.md)
 - [StravaClient::Error](docs/Error.md)
 - [StravaClient::ExplorerResponse](docs/ExplorerResponse.md)
 - [StravaClient::ExplorerSegment](docs/ExplorerSegment.md)
 - [StravaClient::Fault](docs/Fault.md)
 - [StravaClient::HeartRateZoneRanges](docs/HeartRateZoneRanges.md)
 - [StravaClient::Lap](docs/Lap.md)
 - [StravaClient::LatLng](docs/LatLng.md)
 - [StravaClient::MembershipApplication](docs/MembershipApplication.md)
 - [StravaClient::MetaActivity](docs/MetaActivity.md)
 - [StravaClient::MetaAthlete](docs/MetaAthlete.md)
 - [StravaClient::MetaClub](docs/MetaClub.md)
 - [StravaClient::PhotosSummary](docs/PhotosSummary.md)
 - [StravaClient::PhotosSummaryPrimary](docs/PhotosSummaryPrimary.md)
 - [StravaClient::PolylineMap](docs/PolylineMap.md)
 - [StravaClient::PowerZoneRanges](docs/PowerZoneRanges.md)
 - [StravaClient::Route](docs/Route.md)
 - [StravaClient::RouteDirection](docs/RouteDirection.md)
 - [StravaClient::RunningRace](docs/RunningRace.md)
 - [StravaClient::SegmentLeaderboard](docs/SegmentLeaderboard.md)
 - [StravaClient::SegmentLeaderboardEntry](docs/SegmentLeaderboardEntry.md)
 - [StravaClient::Split](docs/Split.md)
 - [StravaClient::StreamSet](docs/StreamSet.md)
 - [StravaClient::SummaryGear](docs/SummaryGear.md)
 - [StravaClient::SummarySegment](docs/SummarySegment.md)
 - [StravaClient::SummarySegmentEffort](docs/SummarySegmentEffort.md)
 - [StravaClient::TimedZoneDistribution](docs/TimedZoneDistribution.md)
 - [StravaClient::UpdatableActivity](docs/UpdatableActivity.md)
 - [StravaClient::Upload](docs/Upload.md)
 - [StravaClient::ZoneRange](docs/ZoneRange.md)
 - [StravaClient::ZoneRanges](docs/ZoneRanges.md)
 - [StravaClient::Zones](docs/Zones.md)
 - [StravaClient::AltitudeStream](docs/AltitudeStream.md)
 - [StravaClient::CadenceStream](docs/CadenceStream.md)
 - [StravaClient::DetailedGear](docs/DetailedGear.md)
 - [StravaClient::DetailedSegment](docs/DetailedSegment.md)
 - [StravaClient::DetailedSegmentEffort](docs/DetailedSegmentEffort.md)
 - [StravaClient::DistanceStream](docs/DistanceStream.md)
 - [StravaClient::HeartrateStream](docs/HeartrateStream.md)
 - [StravaClient::LatLngStream](docs/LatLngStream.md)
 - [StravaClient::MovingStream](docs/MovingStream.md)
 - [StravaClient::PowerStream](docs/PowerStream.md)
 - [StravaClient::SmoothGradeStream](docs/SmoothGradeStream.md)
 - [StravaClient::SmoothVelocityStream](docs/SmoothVelocityStream.md)
 - [StravaClient::SummaryActivity](docs/SummaryActivity.md)
 - [StravaClient::SummaryAthlete](docs/SummaryAthlete.md)
 - [StravaClient::SummaryClub](docs/SummaryClub.md)
 - [StravaClient::TemperatureStream](docs/TemperatureStream.md)
 - [StravaClient::TimeStream](docs/TimeStream.md)
 - [StravaClient::TimedZoneRange](docs/TimedZoneRange.md)
 - [StravaClient::DetailedActivity](docs/DetailedActivity.md)
 - [StravaClient::DetailedAthlete](docs/DetailedAthlete.md)
 - [StravaClient::DetailedClub](docs/DetailedClub.md)


## Documentation for Authorization


### strava_oauth

- **Type**: OAuth
- **Flow**: accessCode
- **Authorization URL**: https://www.strava.com/api/v3/oauth/authorize
- **Scopes**: 
  - public: default, private activities are not returned, privacy zones are respected in stream requests
  - view_private: View private activities and data within privacy zones
  - write: Modify activities, upload on the user’s behalf
