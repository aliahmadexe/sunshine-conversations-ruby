=begin
#Sunshine Conversations API

The version of the OpenAPI document: 9.3.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1
=end

require 'date'

module SunshineConversationsClient
  # To set up a Twitter integration, please follow the steps outlined in the [Twitter Setup Guide](https://docs.smooch.io/guide/twitter/#setup). 
  class TwitterAllOf
    # The type of integration.
    attr_accessor :type

    # Your Twitter app’s tier, sandbox, premium or enterprise.
    attr_accessor :tier

    # The Twitter dev environments label (required for sandbox and premium tiers).
    attr_accessor :env_name

    # The consumer key for your Twitter app.
    attr_accessor :consumer_key

    # The consumer key secret for your Twitter app.
    attr_accessor :consumer_secret

    # The access token key obtained from your user via oauth.
    attr_accessor :access_token_key

    # The access token secret obtained from your user via oauth.
    attr_accessor :access_token_secret

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
        :'type' => :'type',
        :'tier' => :'tier',
        :'env_name' => :'envName',
        :'consumer_key' => :'consumerKey',
        :'consumer_secret' => :'consumerSecret',
        :'access_token_key' => :'accessTokenKey',
        :'access_token_secret' => :'accessTokenSecret'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'tier' => :'String',
        :'env_name' => :'String',
        :'consumer_key' => :'String',
        :'consumer_secret' => :'String',
        :'access_token_key' => :'String',
        :'access_token_secret' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SunshineConversationsClient::TwitterAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SunshineConversationsClient::TwitterAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'twitter'
      end

      if attributes.key?(:'tier')
        self.tier = attributes[:'tier']
      end

      if attributes.key?(:'env_name')
        self.env_name = attributes[:'env_name']
      end

      if attributes.key?(:'consumer_key')
        self.consumer_key = attributes[:'consumer_key']
      end

      if attributes.key?(:'consumer_secret')
        self.consumer_secret = attributes[:'consumer_secret']
      end

      if attributes.key?(:'access_token_key')
        self.access_token_key = attributes[:'access_token_key']
      end

      if attributes.key?(:'access_token_secret')
        self.access_token_secret = attributes[:'access_token_secret']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @tier.nil?
        invalid_properties.push('invalid value for "tier", tier cannot be nil.')
      end

      if !@env_name.nil? && @env_name.to_s.length < 1
        invalid_properties.push('invalid value for "env_name", the character length must be great than or equal to 1.')
      end

      if @consumer_key.nil?
        invalid_properties.push('invalid value for "consumer_key", consumer_key cannot be nil.')
      end

      if @consumer_key.to_s.length < 1
        invalid_properties.push('invalid value for "consumer_key", the character length must be great than or equal to 1.')
      end

      if @consumer_secret.nil?
        invalid_properties.push('invalid value for "consumer_secret", consumer_secret cannot be nil.')
      end

      if @consumer_secret.to_s.length < 1
        invalid_properties.push('invalid value for "consumer_secret", the character length must be great than or equal to 1.')
      end

      if !@access_token_key.nil? && @access_token_key.to_s.length < 1
        invalid_properties.push('invalid value for "access_token_key", the character length must be great than or equal to 1.')
      end

      if @access_token_secret.nil?
        invalid_properties.push('invalid value for "access_token_secret", access_token_secret cannot be nil.')
      end

      if @access_token_secret.to_s.length < 1
        invalid_properties.push('invalid value for "access_token_secret", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @tier.nil?
      tier_validator = EnumAttributeValidator.new('String', ["sandbox", "premium", "enterprise"])
      return false unless tier_validator.valid?(@tier)
      return false if !@env_name.nil? && @env_name.to_s.length < 1
      return false if @consumer_key.nil?
      return false if @consumer_key.to_s.length < 1
      return false if @consumer_secret.nil?
      return false if @consumer_secret.to_s.length < 1
      return false if !@access_token_key.nil? && @access_token_key.to_s.length < 1
      return false if @access_token_secret.nil?
      return false if @access_token_secret.to_s.length < 1
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tier Object to be assigned
    def tier=(tier)
      validator = EnumAttributeValidator.new('String', ["sandbox", "premium", "enterprise"])
      unless validator.valid?(tier)
        fail ArgumentError, "invalid value for \"tier\", must be one of #{validator.allowable_values}."
      end
      @tier = tier
    end

    # Custom attribute writer method with validation
    # @param [Object] env_name Value to be assigned
    def env_name=(env_name)
      if !env_name.nil? && env_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "env_name", the character length must be great than or equal to 1.'
      end

      @env_name = env_name
    end

    # Custom attribute writer method with validation
    # @param [Object] consumer_key Value to be assigned
    def consumer_key=(consumer_key)
      if consumer_key.nil?
        fail ArgumentError, 'consumer_key cannot be nil'
      end

      if consumer_key.to_s.length < 1
        fail ArgumentError, 'invalid value for "consumer_key", the character length must be great than or equal to 1.'
      end

      @consumer_key = consumer_key
    end

    # Custom attribute writer method with validation
    # @param [Object] consumer_secret Value to be assigned
    def consumer_secret=(consumer_secret)
      if consumer_secret.nil?
        fail ArgumentError, 'consumer_secret cannot be nil'
      end

      if consumer_secret.to_s.length < 1
        fail ArgumentError, 'invalid value for "consumer_secret", the character length must be great than or equal to 1.'
      end

      @consumer_secret = consumer_secret
    end

    # Custom attribute writer method with validation
    # @param [Object] access_token_key Value to be assigned
    def access_token_key=(access_token_key)
      if !access_token_key.nil? && access_token_key.to_s.length < 1
        fail ArgumentError, 'invalid value for "access_token_key", the character length must be great than or equal to 1.'
      end

      @access_token_key = access_token_key
    end

    # Custom attribute writer method with validation
    # @param [Object] access_token_secret Value to be assigned
    def access_token_secret=(access_token_secret)
      if access_token_secret.nil?
        fail ArgumentError, 'access_token_secret cannot be nil'
      end

      if access_token_secret.to_s.length < 1
        fail ArgumentError, 'invalid value for "access_token_secret", the character length must be great than or equal to 1.'
      end

      @access_token_secret = access_token_secret
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          tier == o.tier &&
          env_name == o.env_name &&
          consumer_key == o.consumer_key &&
          consumer_secret == o.consumer_secret &&
          access_token_key == o.access_token_key &&
          access_token_secret == o.access_token_secret
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, tier, env_name, consumer_key, consumer_secret, access_token_key, access_token_secret].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
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
      when :Boolean
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
        SunshineConversationsClient.const_get(type).build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end
        
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
        value.compact.map { |v| _to_hash(v) }
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