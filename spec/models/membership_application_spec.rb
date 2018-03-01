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

# Unit tests for StravaClient::MembershipApplication
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MembershipApplication' do
  before do
    # run before each test
    @instance = StravaClient::MembershipApplication.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MembershipApplication' do
    it 'should create an instance of MembershipApplication' do
      expect(@instance).to be_instance_of(StravaClient::MembershipApplication)
    end
  end
  describe 'test attribute "success"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "active"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "membership"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["member", "pending"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.membership = value }.not_to raise_error
       #end
    end
  end

end

