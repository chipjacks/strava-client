=begin
#Strava API v3

#The [Swagger Playground](https://developers.strava.com/playground) is the easiest way to familiarize yourself with the Strava API by submitting HTTP requests and observing the responses before you write any client code. It will show what a response will look like with different endpoints depending on the authorization scope you receive from your athletes. To use the Playground, go to https://www.strava.com/settings/api and change your “Authorization Callback Domain” to developers.strava.com. Please note, we only support Swagger 2.0. There is a known issue where you can only select one scope at a time. For more information, please check the section “client code” at https://developers.strava.com/docs.

OpenAPI spec version: 3.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module StravaClient

  class RunningRace
    # The unique identifier of this race.
    attr_accessor :id

    # The name of this race.
    attr_accessor :name

    # The type of this race.
    attr_accessor :running_race_type

    # The race's distance, in meters.
    attr_accessor :distance

    # The time at which the race begins started in the local timezone.
    attr_accessor :start_date_local

    # The name of the city in which the race is taking place.
    attr_accessor :city

    # The name of the state or geographical region in which the race is taking place.
    attr_accessor :state

    # The name of the country in which the race is taking place.
    attr_accessor :country

    # The set of routes that cover this race's course.
    attr_accessor :route_ids

    # The unit system in which the race should be displayed.
    attr_accessor :measurement_preference

    # The vanity URL of this race on Strava.
    attr_accessor :url

    # The URL of this race's website.
    attr_accessor :website_url

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
        :'running_race_type' => :'running_race_type',
        :'distance' => :'distance',
        :'start_date_local' => :'start_date_local',
        :'city' => :'city',
        :'state' => :'state',
        :'country' => :'country',
        :'route_ids' => :'route_ids',
        :'measurement_preference' => :'measurement_preference',
        :'url' => :'url',
        :'website_url' => :'website_url'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'running_race_type' => :'Integer',
        :'distance' => :'Float',
        :'start_date_local' => :'DateTime',
        :'city' => :'String',
        :'state' => :'String',
        :'country' => :'String',
        :'route_ids' => :'Array<Integer>',
        :'measurement_preference' => :'String',
        :'url' => :'String',
        :'website_url' => :'String'
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

      if attributes.has_key?(:'running_race_type')
        self.running_race_type = attributes[:'running_race_type']
      end

      if attributes.has_key?(:'distance')
        self.distance = attributes[:'distance']
      end

      if attributes.has_key?(:'start_date_local')
        self.start_date_local = attributes[:'start_date_local']
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

      if attributes.has_key?(:'route_ids')
        if (value = attributes[:'route_ids']).is_a?(Array)
          self.route_ids = value
        end
      end

      if attributes.has_key?(:'measurement_preference')
        self.measurement_preference = attributes[:'measurement_preference']
      end

      if attributes.has_key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.has_key?(:'website_url')
        self.website_url = attributes[:'website_url']
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
      measurement_preference_validator = EnumAttributeValidator.new('String', ["feet", "meters"])
      return false unless measurement_preference_validator.valid?(@measurement_preference)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] measurement_preference Object to be assigned
    def measurement_preference=(measurement_preference)
      validator = EnumAttributeValidator.new('String', ["feet", "meters"])
      unless validator.valid?(measurement_preference)
        fail ArgumentError, "invalid value for 'measurement_preference', must be one of #{validator.allowable_values}."
      end
      @measurement_preference = measurement_preference
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          running_race_type == o.running_race_type &&
          distance == o.distance &&
          start_date_local == o.start_date_local &&
          city == o.city &&
          state == o.state &&
          country == o.country &&
          route_ids == o.route_ids &&
          measurement_preference == o.measurement_preference &&
          url == o.url &&
          website_url == o.website_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, running_race_type, distance, start_date_local, city, state, country, route_ids, measurement_preference, url, website_url].hash
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
