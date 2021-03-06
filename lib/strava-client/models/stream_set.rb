=begin
#Strava API v3

#The [Swagger Playground](https://developers.strava.com/playground) is the easiest way to familiarize yourself with the Strava API by submitting HTTP requests and observing the responses before you write any client code. It will show what a response will look like with different endpoints depending on the authorization scope you receive from your athletes. To use the Playground, go to https://www.strava.com/settings/api and change your “Authorization Callback Domain” to developers.strava.com. Please note, we only support Swagger 2.0. There is a known issue where you can only select one scope at a time. For more information, please check the section “client code” at https://developers.strava.com/docs.

OpenAPI spec version: 3.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module StravaClient

  class StreamSet
    attr_accessor :time

    attr_accessor :distance

    attr_accessor :latlng

    attr_accessor :altitude

    attr_accessor :velocity_smooth

    attr_accessor :heartrate

    attr_accessor :cadence

    attr_accessor :watts

    attr_accessor :temp

    attr_accessor :moving

    attr_accessor :grade_smooth


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'time' => :'time',
        :'distance' => :'distance',
        :'latlng' => :'latlng',
        :'altitude' => :'altitude',
        :'velocity_smooth' => :'velocity_smooth',
        :'heartrate' => :'heartrate',
        :'cadence' => :'cadence',
        :'watts' => :'watts',
        :'temp' => :'temp',
        :'moving' => :'moving',
        :'grade_smooth' => :'grade_smooth'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'time' => :'TimeStream',
        :'distance' => :'DistanceStream',
        :'latlng' => :'LatLngStream',
        :'altitude' => :'AltitudeStream',
        :'velocity_smooth' => :'SmoothVelocityStream',
        :'heartrate' => :'HeartrateStream',
        :'cadence' => :'CadenceStream',
        :'watts' => :'PowerStream',
        :'temp' => :'TemperatureStream',
        :'moving' => :'MovingStream',
        :'grade_smooth' => :'SmoothGradeStream'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'time')
        self.time = attributes[:'time']
      end

      if attributes.has_key?(:'distance')
        self.distance = attributes[:'distance']
      end

      if attributes.has_key?(:'latlng')
        self.latlng = attributes[:'latlng']
      end

      if attributes.has_key?(:'altitude')
        self.altitude = attributes[:'altitude']
      end

      if attributes.has_key?(:'velocity_smooth')
        self.velocity_smooth = attributes[:'velocity_smooth']
      end

      if attributes.has_key?(:'heartrate')
        self.heartrate = attributes[:'heartrate']
      end

      if attributes.has_key?(:'cadence')
        self.cadence = attributes[:'cadence']
      end

      if attributes.has_key?(:'watts')
        self.watts = attributes[:'watts']
      end

      if attributes.has_key?(:'temp')
        self.temp = attributes[:'temp']
      end

      if attributes.has_key?(:'moving')
        self.moving = attributes[:'moving']
      end

      if attributes.has_key?(:'grade_smooth')
        self.grade_smooth = attributes[:'grade_smooth']
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
          time == o.time &&
          distance == o.distance &&
          latlng == o.latlng &&
          altitude == o.altitude &&
          velocity_smooth == o.velocity_smooth &&
          heartrate == o.heartrate &&
          cadence == o.cadence &&
          watts == o.watts &&
          temp == o.temp &&
          moving == o.moving &&
          grade_smooth == o.grade_smooth
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [time, distance, latlng, altitude, velocity_smooth, heartrate, cadence, watts, temp, moving, grade_smooth].hash
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
