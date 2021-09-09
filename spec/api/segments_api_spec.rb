=begin
#Strava API v3

#The [Swagger Playground](https://developers.strava.com/playground) is the easiest way to familiarize yourself with the Strava API by submitting HTTP requests and observing the responses before you write any client code. It will show what a response will look like with different endpoints depending on the authorization scope you receive from your athletes. To use the Playground, go to https://www.strava.com/settings/api and change your “Authorization Callback Domain” to developers.strava.com. Please note, we only support Swagger 2.0. There is a known issue where you can only select one scope at a time. For more information, please check the section “client code” at https://developers.strava.com/docs.

OpenAPI spec version: 3.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for StravaClient::SegmentsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SegmentsApi' do
  before do
    # run before each test
    @instance = StravaClient::SegmentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SegmentsApi' do
    it 'should create an instance of SegmentsApi' do
      expect(@instance).to be_instance_of(StravaClient::SegmentsApi)
    end
  end

  # unit tests for explore_segments
  # Explore segments
  # Returns the top 10 segments matching a specified query.
  # @param bounds The latitude and longitude for two points describing a rectangular boundary for the search: [southwest corner latitutde, southwest corner longitude, northeast corner latitude, northeast corner longitude]
  # @param [Hash] opts the optional parameters
  # @option opts [String] :activity_type Desired activity type.
  # @option opts [Integer] :min_cat The minimum climbing category.
  # @option opts [Integer] :max_cat The maximum climbing category.
  # @return [ExplorerResponse]
  describe 'explore_segments test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_logged_in_athlete_starred_segments
  # List Starred Segments
  # List of the authenticated athlete&#39;s starred segments. Private segments are filtered out unless requested by a token with read_all scope.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number. Defaults to 1.
  # @option opts [Integer] :per_page Number of items per page. Defaults to 30.
  # @return [Array<SummarySegment>]
  describe 'get_logged_in_athlete_starred_segments test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_segment_by_id
  # Get Segment
  # Returns the specified segment. read_all scope required in order to retrieve athlete-specific segment information, or to retrieve private segments.
  # @param id The identifier of the segment.
  # @param [Hash] opts the optional parameters
  # @return [DetailedSegment]
  describe 'get_segment_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for star_segment
  # Star Segment
  # Stars/Unstars the given segment for the authenticated athlete. Requires profile:write scope.
  # @param id The identifier of the segment to star.
  # @param starred If true, star the segment; if false, unstar the segment.
  # @param [Hash] opts the optional parameters
  # @return [DetailedSegment]
  describe 'star_segment test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
