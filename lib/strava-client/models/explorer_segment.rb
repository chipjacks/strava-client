=begin
#Strava API v3

#Strava API

OpenAPI spec version: 3.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module StravaClient

  class ExplorerSegment
    # The unique identifier of this segment
    attr_accessor :id

    # The name of this segment
    attr_accessor :name

    # The category of the climb
    attr_accessor :climb_category

    # The description for the category of the climb
    attr_accessor :climb_category_desc

    # The segment's average grade, in percents
    attr_accessor :avg_grade

    attr_accessor :start_latlng

    attr_accessor :end_latlng

    # The segments's evelation difference, in meters
    attr_accessor :elev_difference

    # The segment's distance, in meters
    attr_accessor :distance

    # The polyline of the segment
    attr_accessor :points

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
        :'climb_category' => :'climb_category',
        :'climb_category_desc' => :'climb_category_desc',
        :'avg_grade' => :'avg_grade',
        :'start_latlng' => :'start_latlng',
        :'end_latlng' => :'end_latlng',
        :'elev_difference' => :'elev_difference',
        :'distance' => :'distance',
        :'points' => :'points'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'climb_category' => :'Integer',
        :'climb_category_desc' => :'String',
        :'avg_grade' => :'Float',
        :'start_latlng' => :'LatLng',
        :'end_latlng' => :'LatLng',
        :'elev_difference' => :'Float',
        :'distance' => :'Float',
        :'points' => :'String'
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

      if attributes.has_key?(:'climb_category')
        self.climb_category = attributes[:'climb_category']
      end

      if attributes.has_key?(:'climb_category_desc')
        self.climb_category_desc = attributes[:'climb_category_desc']
      end

      if attributes.has_key?(:'avg_grade')
        self.avg_grade = attributes[:'avg_grade']
      end

      if attributes.has_key?(:'start_latlng')
        self.start_latlng = attributes[:'start_latlng']
      end

      if attributes.has_key?(:'end_latlng')
        self.end_latlng = attributes[:'end_latlng']
      end

      if attributes.has_key?(:'elev_difference')
        self.elev_difference = attributes[:'elev_difference']
      end

      if attributes.has_key?(:'distance')
        self.distance = attributes[:'distance']
      end

      if attributes.has_key?(:'points')
        self.points = attributes[:'points']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@climb_category.nil? && @climb_category > 5
        invalid_properties.push("invalid value for 'climb_category', must be smaller than or equal to 5.")
      end

      if !@climb_category.nil? && @climb_category < 0
        invalid_properties.push("invalid value for 'climb_category', must be greater than or equal to 0.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@climb_category.nil? && @climb_category > 5
      return false if !@climb_category.nil? && @climb_category < 0
      climb_category_desc_validator = EnumAttributeValidator.new('String', ["NC", "4", "3", "2", "1", "HC"])
      return false unless climb_category_desc_validator.valid?(@climb_category_desc)
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] climb_category Value to be assigned
    def climb_category=(climb_category)

      if !climb_category.nil? && climb_category > 5
        fail ArgumentError, "invalid value for 'climb_category', must be smaller than or equal to 5."
      end

      if !climb_category.nil? && climb_category < 0
        fail ArgumentError, "invalid value for 'climb_category', must be greater than or equal to 0."
      end

      @climb_category = climb_category
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] climb_category_desc Object to be assigned
    def climb_category_desc=(climb_category_desc)
      validator = EnumAttributeValidator.new('String', ["NC", "4", "3", "2", "1", "HC"])
      unless validator.valid?(climb_category_desc)
        fail ArgumentError, "invalid value for 'climb_category_desc', must be one of #{validator.allowable_values}."
      end
      @climb_category_desc = climb_category_desc
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          climb_category == o.climb_category &&
          climb_category_desc == o.climb_category_desc &&
          avg_grade == o.avg_grade &&
          start_latlng == o.start_latlng &&
          end_latlng == o.end_latlng &&
          elev_difference == o.elev_difference &&
          distance == o.distance &&
          points == o.points
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, climb_category, climb_category_desc, avg_grade, start_latlng, end_latlng, elev_difference, distance, points].hash
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
