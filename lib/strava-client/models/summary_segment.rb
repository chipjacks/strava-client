=begin
#Strava API v3

#The [Swagger Playground](https://developers.strava.com/playground) is the easiest way to familiarize yourself with the Strava API by submitting HTTP requests and observing the responses before you write any client code. It will show what a response will look like with different endpoints depending on the authorization scope you receive from your athletes. To use the Playground, go to https://www.strava.com/settings/api and change your “Authorization Callback Domain” to developers.strava.com. Please note, we only support Swagger 2.0. There is a known issue where you can only select one scope at a time. For more information, please check the section “client code” at https://developers.strava.com/docs.

OpenAPI spec version: 3.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module StravaClient

  class SummarySegment
    # The unique identifier of this segment
    attr_accessor :id

    # The name of this segment
    attr_accessor :name

    attr_accessor :activity_type

    # The segment's distance, in meters
    attr_accessor :distance

    # The segment's average grade, in percents
    attr_accessor :average_grade

    # The segments's maximum grade, in percents
    attr_accessor :maximum_grade

    # The segments's highest elevation, in meters
    attr_accessor :elevation_high

    # The segments's lowest elevation, in meters
    attr_accessor :elevation_low

    attr_accessor :start_latlng

    attr_accessor :end_latlng

    # The category of the climb [0, 5]. Higher is harder ie. 5 is Hors catégorie, 0 is uncategorized in climb_category.
    attr_accessor :climb_category

    # The segments's city.
    attr_accessor :city

    # The segments's state or geographical region.
    attr_accessor :state

    # The segment's country.
    attr_accessor :country

    # Whether this segment is private.
    attr_accessor :private

    attr_accessor :athlete_pr_effort

    attr_accessor :athlete_segment_stats

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'activity_type' => :'activity_type',
        :'distance' => :'distance',
        :'average_grade' => :'average_grade',
        :'maximum_grade' => :'maximum_grade',
        :'elevation_high' => :'elevation_high',
        :'elevation_low' => :'elevation_low',
        :'start_latlng' => :'start_latlng',
        :'end_latlng' => :'end_latlng',
        :'climb_category' => :'climb_category',
        :'city' => :'city',
        :'state' => :'state',
        :'country' => :'country',
        :'private' => :'private',
        :'athlete_pr_effort' => :'athlete_pr_effort',
        :'athlete_segment_stats' => :'athlete_segment_stats'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'activity_type' => :'String',
        :'distance' => :'Float',
        :'average_grade' => :'Float',
        :'maximum_grade' => :'Float',
        :'elevation_high' => :'Float',
        :'elevation_low' => :'Float',
        :'start_latlng' => :'LatLng',
        :'end_latlng' => :'LatLng',
        :'climb_category' => :'Integer',
        :'city' => :'String',
        :'state' => :'String',
        :'country' => :'String',
        :'private' => :'BOOLEAN',
        :'athlete_pr_effort' => :'SummarySegmentEffort',
        :'athlete_segment_stats' => :'SummaryPRSegmentEffort'
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

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'activity_type')
        self.activity_type = attributes[:'activity_type']
      end

      if attributes.has_key?(:'distance')
        self.distance = attributes[:'distance']
      end

      if attributes.has_key?(:'average_grade')
        self.average_grade = attributes[:'average_grade']
      end

      if attributes.has_key?(:'maximum_grade')
        self.maximum_grade = attributes[:'maximum_grade']
      end

      if attributes.has_key?(:'elevation_high')
        self.elevation_high = attributes[:'elevation_high']
      end

      if attributes.has_key?(:'elevation_low')
        self.elevation_low = attributes[:'elevation_low']
      end

      if attributes.has_key?(:'start_latlng')
        self.start_latlng = attributes[:'start_latlng']
      end

      if attributes.has_key?(:'end_latlng')
        self.end_latlng = attributes[:'end_latlng']
      end

      if attributes.has_key?(:'climb_category')
        self.climb_category = attributes[:'climb_category']
      end

      if attributes.has_key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'private')
        self.private = attributes[:'private']
      end

      if attributes.has_key?(:'athlete_pr_effort')
        self.athlete_pr_effort = attributes[:'athlete_pr_effort']
      end

      if attributes.has_key?(:'athlete_segment_stats')
        self.athlete_segment_stats = attributes[:'athlete_segment_stats']
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
      activity_type_validator = EnumAttributeValidator.new('String', ["Ride", "Run"])
      return false unless activity_type_validator.valid?(@activity_type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] activity_type Object to be assigned
    def activity_type=(activity_type)
      validator = EnumAttributeValidator.new('String', ["Ride", "Run"])
      unless validator.valid?(activity_type)
        fail ArgumentError, "invalid value for 'activity_type', must be one of #{validator.allowable_values}."
      end
      @activity_type = activity_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          activity_type == o.activity_type &&
          distance == o.distance &&
          average_grade == o.average_grade &&
          maximum_grade == o.maximum_grade &&
          elevation_high == o.elevation_high &&
          elevation_low == o.elevation_low &&
          start_latlng == o.start_latlng &&
          end_latlng == o.end_latlng &&
          climb_category == o.climb_category &&
          city == o.city &&
          state == o.state &&
          country == o.country &&
          private == o.private &&
          athlete_pr_effort == o.athlete_pr_effort &&
          athlete_segment_stats == o.athlete_segment_stats
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, activity_type, distance, average_grade, maximum_grade, elevation_high, elevation_low, start_latlng, end_latlng, climb_category, city, state, country, private, athlete_pr_effort, athlete_segment_stats].hash
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
