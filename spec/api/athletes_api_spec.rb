=begin
#Strava API v3

#The [Swagger Playground](https://developers.strava.com/playground) is the easiest way to familiarize yourself with the Strava API by submitting HTTP requests and observing the responses before you write any client code. It will show what a response will look like with different endpoints depending on the authorization scope you receive from your athletes. To use the Playground, go to https://www.strava.com/settings/api and change your “Authorization Callback Domain” to developers.strava.com. Please note, we only support Swagger 2.0. There is a known issue where you can only select one scope at a time. For more information, please check the section “client code” at https://developers.strava.com/docs.

OpenAPI spec version: 3.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for StravaClient::AthletesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AthletesApi' do
  before do
    # run before each test
    @instance = StravaClient::AthletesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AthletesApi' do
    it 'should create an instance of AthletesApi' do
      expect(@instance).to be_instance_of(StravaClient::AthletesApi)
    end
  end

  # unit tests for get_logged_in_athlete
  # Get Authenticated Athlete
  # Returns the currently authenticated athlete. Tokens with profile:read_all scope will receive a detailed athlete representation; all others will receive a summary representation.
  # @param [Hash] opts the optional parameters
  # @return [DetailedAthlete]
  describe 'get_logged_in_athlete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_logged_in_athlete_zones
  # Get Zones
  # Returns the the authenticated athlete&#39;s heart rate and power zones. Requires profile:read_all.
  # @param [Hash] opts the optional parameters
  # @return [Zones]
  describe 'get_logged_in_athlete_zones test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_stats
  # Get Athlete Stats
  # Returns the activity stats of an athlete. Only includes data from activities set to Everyone visibilty.
  # @param id The identifier of the athlete. Must match the authenticated athlete.
  # @param [Hash] opts the optional parameters
  # @return [ActivityStats]
  describe 'get_stats test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_logged_in_athlete
  # Update Athlete
  # Update the currently authenticated athlete. Requires profile:write scope.
  # @param weight The weight of the athlete in kilograms.
  # @param [Hash] opts the optional parameters
  # @return [DetailedAthlete]
  describe 'update_logged_in_athlete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
