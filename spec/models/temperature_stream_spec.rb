=begin
#Strava API v3

#The [Swagger Playground](https://developers.strava.com/playground) is the easiest way to familiarize yourself with the Strava API by submitting HTTP requests and observing the responses before you write any client code. It will show what a response will look like with different endpoints depending on the authorization scope you receive from your athletes. To use the Playground, go to https://www.strava.com/settings/api and change your “Authorization Callback Domain” to developers.strava.com. Please note, we only support Swagger 2.0. There is a known issue where you can only select one scope at a time. For more information, please check the section “client code” at https://developers.strava.com/docs.

OpenAPI spec version: 3.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for StravaClient::TemperatureStream
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TemperatureStream' do
  before do
    # run before each test
    @instance = StravaClient::TemperatureStream.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TemperatureStream' do
    it 'should create an instance of TemperatureStream' do
      expect(@instance).to be_instance_of(StravaClient::TemperatureStream)
    end
  end
  describe 'test attribute "original_size"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "resolution"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["low", "medium", "high"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.resolution = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "series_type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["distance", "time"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.series_type = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "data"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

