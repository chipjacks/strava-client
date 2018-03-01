=begin
#Strava API v3

#Strava API

OpenAPI spec version: 3.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for StravaClient::SegmentLeaderboard
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SegmentLeaderboard' do
  before do
    # run before each test
    @instance = StravaClient::SegmentLeaderboard.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SegmentLeaderboard' do
    it 'should create an instance of SegmentLeaderboard' do
      expect(@instance).to be_instance_of(StravaClient::SegmentLeaderboard)
    end
  end
  describe 'test attribute "entry_count"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "effort_count"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "kom_type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["kom", "cr"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.kom_type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "entries"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
