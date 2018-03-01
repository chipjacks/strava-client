=begin
#Strava API v3

#Strava API

OpenAPI spec version: 3.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module StravaClient
  class RunningRacesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get Running Race
    # Returns a running race for a given identifier.
    # @param id The identifier of the running race.
    # @param [Hash] opts the optional parameters
    # @return [RunningRace]
    def get_running_race_by_id(id, opts = {})
      data, _status_code, _headers = get_running_race_by_id_with_http_info(id, opts)
      return data
    end

    # Get Running Race
    # Returns a running race for a given identifier.
    # @param id The identifier of the running race.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RunningRace, Fixnum, Hash)>] RunningRace data, response status code and response headers
    def get_running_race_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RunningRacesApi.get_running_race_by_id ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RunningRacesApi.get_running_race_by_id"
      end
      # resource path
      local_var_path = "/running_races/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['strava_oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RunningRace')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RunningRacesApi#get_running_race_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Running Races
    # Returns a list running races based on a set of search criteria.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :year Filters the list by a given year.
    # @return [Array<RunningRace>]
    def get_running_races(opts = {})
      data, _status_code, _headers = get_running_races_with_http_info(opts)
      return data
    end

    # List Running Races
    # Returns a list running races based on a set of search criteria.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :year Filters the list by a given year.
    # @return [Array<(Array<RunningRace>, Fixnum, Hash)>] Array<RunningRace> data, response status code and response headers
    def get_running_races_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RunningRacesApi.get_running_races ..."
      end
      # resource path
      local_var_path = "/running_races"

      # query parameters
      query_params = {}
      query_params[:'year'] = opts[:'year'] if !opts[:'year'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['strava_oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<RunningRace>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RunningRacesApi#get_running_races\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
