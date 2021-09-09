=begin
#Strava API v3

#The [Swagger Playground](https://developers.strava.com/playground) is the easiest way to familiarize yourself with the Strava API by submitting HTTP requests and observing the responses before you write any client code. It will show what a response will look like with different endpoints depending on the authorization scope you receive from your athletes. To use the Playground, go to https://www.strava.com/settings/api and change your “Authorization Callback Domain” to developers.strava.com. Please note, we only support Swagger 2.0. There is a known issue where you can only select one scope at a time. For more information, please check the section “client code” at https://developers.strava.com/docs.

OpenAPI spec version: 3.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for StravaClient::RunningRacesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RunningRacesApi' do
  before do
    # run before each test
    @instance = StravaClient::RunningRacesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RunningRacesApi' do
    it 'should create an instance of RunningRacesApi' do
      expect(@instance).to be_instance_of(StravaClient::RunningRacesApi)
    end
  end

  # unit tests for get_running_race_by_id
  # Get Running Race
  # Returns a running race for a given identifier.
  # @param id The identifier of the running race.
  # @param [Hash] opts the optional parameters
  # @return [RunningRace]
  describe 'get_running_race_by_id test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_running_races
  # List Running Races
  # Returns a list running races based on a set of search criteria.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :year Filters the list by a given year.
  # @return [Array<RunningRace>]
  describe 'get_running_races test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
