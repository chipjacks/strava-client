=begin
#Strava API v3

#Strava API

OpenAPI spec version: 3.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for StravaClient::SegmentEffortsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SegmentEffortsApi' do
  before do
    # run before each test
    @instance = StravaClient::SegmentEffortsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SegmentEffortsApi' do
    it 'should create an instance of SegmentEffortsApi' do
      expect(@instance).to be_instance_of(StravaClient::SegmentEffortsApi)
    end
  end

  # unit tests for get_efforts_by_segment_id
  # List Segment Efforts
  # Returns a set of the authenticated athlete&#39;s segment efforts for a given segment.
  # @param id The identifier of the segment.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number.
  # @option opts [Integer] :per_page Number of items per page. Defaults to 30.
  # @return [Array<DetailedSegmentEffort>]
  describe 'get_efforts_by_segment_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_segment_effort_by_id
  # Get Segment Effort
  # Returns a segment effort from an activity that is owned by the authenticated athlete.
  # @param id The identifier of the segment effort.
  # @param [Hash] opts the optional parameters
  # @return [DetailedSegmentEffort]
  describe 'get_segment_effort_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
