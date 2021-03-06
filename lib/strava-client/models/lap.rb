=begin
#Strava API v3

#The [Swagger Playground](https://developers.strava.com/playground) is the easiest way to familiarize yourself with the Strava API by submitting HTTP requests and observing the responses before you write any client code. It will show what a response will look like with different endpoints depending on the authorization scope you receive from your athletes. To use the Playground, go to https://www.strava.com/settings/api and change your “Authorization Callback Domain” to developers.strava.com. Please note, we only support Swagger 2.0. There is a known issue where you can only select one scope at a time. For more information, please check the section “client code” at https://developers.strava.com/docs.

OpenAPI spec version: 3.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module StravaClient

  class Lap
    # The unique identifier of this lap
    attr_accessor :id

    attr_accessor :activity

    attr_accessor :athlete

    # The lap's average cadence
    attr_accessor :average_cadence

    # The lap's average speed
    attr_accessor :average_speed

    # The lap's distance, in meters
    attr_accessor :distance

    # The lap's elapsed time, in seconds
    attr_accessor :elapsed_time

    # The start index of this effort in its activity's stream
    attr_accessor :start_index

    # The end index of this effort in its activity's stream
    attr_accessor :end_index

    # The index of this lap in the activity it belongs to
    attr_accessor :lap_index

    # The maximum speed of this lat, in meters per second
    attr_accessor :max_speed

    # The lap's moving time, in seconds
    attr_accessor :moving_time

    # The name of the lap
    attr_accessor :name

    # The athlete's pace zone during this lap
    attr_accessor :pace_zone

    attr_accessor :split

    # The time at which the lap was started.
    attr_accessor :start_date

    # The time at which the lap was started in the local timezone.
    attr_accessor :start_date_local

    # The elevation gain of this lap, in meters
    attr_accessor :total_elevation_gain


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'activity' => :'activity',
        :'athlete' => :'athlete',
        :'average_cadence' => :'average_cadence',
        :'average_speed' => :'average_speed',
        :'distance' => :'distance',
        :'elapsed_time' => :'elapsed_time',
        :'start_index' => :'start_index',
        :'end_index' => :'end_index',
        :'lap_index' => :'lap_index',
        :'max_speed' => :'max_speed',
        :'moving_time' => :'moving_time',
        :'name' => :'name',
        :'pace_zone' => :'pace_zone',
        :'split' => :'split',
        :'start_date' => :'start_date',
        :'start_date_local' => :'start_date_local',
        :'total_elevation_gain' => :'total_elevation_gain'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'activity' => :'MetaActivity',
        :'athlete' => :'MetaAthlete',
        :'average_cadence' => :'Float',
        :'average_speed' => :'Float',
        :'distance' => :'Float',
        :'elapsed_time' => :'Integer',
        :'start_index' => :'Integer',
        :'end_index' => :'Integer',
        :'lap_index' => :'Integer',
        :'max_speed' => :'Float',
        :'moving_time' => :'Integer',
        :'name' => :'String',
        :'pace_zone' => :'Integer',
        :'split' => :'Integer',
        :'start_date' => :'DateTime',
        :'start_date_local' => :'DateTime',
        :'total_elevation_gain' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'activity')
        self.activity = attributes[:'activity']
      end

      if attributes.has_key?(:'athlete')
        self.athlete = attributes[:'athlete']
      end

      if attributes.has_key?(:'average_cadence')
        self.average_cadence = attributes[:'average_cadence']
      end

      if attributes.has_key?(:'average_speed')
        self.average_speed = attributes[:'average_speed']
      end

      if attributes.has_key?(:'distance')
        self.distance = attributes[:'distance']
      end

      if attributes.has_key?(:'elapsed_time')
        self.elapsed_time = attributes[:'elapsed_time']
      end

      if attributes.has_key?(:'start_index')
        self.start_index = attributes[:'start_index']
      end

      if attributes.has_key?(:'end_index')
        self.end_index = attributes[:'end_index']
      end

      if attributes.has_key?(:'lap_index')
        self.lap_index = attributes[:'lap_index']
      end

      if attributes.has_key?(:'max_speed')
        self.max_speed = attributes[:'max_speed']
      end

      if attributes.has_key?(:'moving_time')
        self.moving_time = attributes[:'moving_time']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'pace_zone')
        self.pace_zone = attributes[:'pace_zone']
      end

      if attributes.has_key?(:'split')
        self.split = attributes[:'split']
      end

      if attributes.has_key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.has_key?(:'start_date_local')
        self.start_date_local = attributes[:'start_date_local']
      end

      if attributes.has_key?(:'total_elevation_gain')
        self.total_elevation_gain = attributes[:'total_elevation_gain']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          activity == o.activity &&
          athlete == o.athlete &&
          average_cadence == o.average_cadence &&
          average_speed == o.average_speed &&
          distance == o.distance &&
          elapsed_time == o.elapsed_time &&
          start_index == o.start_index &&
          end_index == o.end_index &&
          lap_index == o.lap_index &&
          max_speed == o.max_speed &&
          moving_time == o.moving_time &&
          name == o.name &&
          pace_zone == o.pace_zone &&
          split == o.split &&
          start_date == o.start_date &&
          start_date_local == o.start_date_local &&
          total_elevation_gain == o.total_elevation_gain
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, activity, athlete, average_cadence, average_speed, distance, elapsed_time, start_index, end_index, lap_index, max_speed, moving_time, name, pace_zone, split, start_date, start_date_local, total_elevation_gain].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = StravaClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
