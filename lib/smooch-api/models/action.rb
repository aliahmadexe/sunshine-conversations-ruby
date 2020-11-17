=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 5.30

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

require 'date'

module SmoochApi

  class Action
    # The action type. See [**ActionTypeEnum**](Enums.md#ActionTypeEnum) for available values.
    attr_accessor :type

    # The button text.
    attr_accessor :text

    # The payload to be sent with the resulting webhook. Required for *postback* and *reply* actions. 
    attr_accessor :payload

    # Flat JSON object containing any custom properties associated with the action.
    attr_accessor :metadata

    # The amount being charged. It needs to be specified in cents and is an integer. Required for *buy* actions. 
    attr_accessor :amount

    # The currency of the amount being charged (USD, CAD, etc.).
    attr_accessor :currency

    # Flag indicating if the message action is the default for a message item in Facebook Messenger.
    attr_accessor :default

    # An icon to render next to the reply option (Facebook Messenger and Web Messenger only).
    attr_accessor :iconUrl

    # The action URI. This is the link that will be used in the clients when clicking the button. Required for *link* and *webview* actions. 
    attr_accessor :uri

    # The webview action fallback uri. This is the link that will be used in clients that do not support webviews. Required for *webview* actions. 
    attr_accessor :fallback

    # The size used to display the webview. Allowed values are [\"compact\", \"tall\", \"full\"]. (Optional) Used for *webview* actions. See [**ActionSizeEnum**](Enums.md#ActionSizeEnum) for available values. 
    attr_accessor :size

    # Extra options to pass directly to the channel API. See [Extra Channel Options](https://docs.smooch.io/rest#extra-channel-options-schema)
    attr_accessor :extraChannelOptions

    # Flag indicating if the webview should open automatically. Only one action per message can be set to true. Currently only supported on the Web Messenger.
    attr_accessor :openOnReceive


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'text' => :'text',
        :'payload' => :'payload',
        :'metadata' => :'metadata',
        :'amount' => :'amount',
        :'currency' => :'currency',
        :'default' => :'default',
        :'iconUrl' => :'iconUrl',
        :'uri' => :'uri',
        :'fallback' => :'fallback',
        :'size' => :'size',
        :'extraChannelOptions' => :'extraChannelOptions',
        :'openOnReceive' => :'openOnReceive'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'type' => :'String',
        :'text' => :'String',
        :'payload' => :'String',
        :'metadata' => :'Object',
        :'amount' => :'Integer',
        :'currency' => :'String',
        :'default' => :'BOOLEAN',
        :'iconUrl' => :'String',
        :'uri' => :'String',
        :'fallback' => :'String',
        :'size' => :'String',
        :'extraChannelOptions' => :'Object',
        :'openOnReceive' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'text')
        self.text = attributes[:'text']
      end

      if attributes.has_key?(:'payload')
        self.payload = attributes[:'payload']
      end

      if attributes.has_key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'default')
        self.default = attributes[:'default']
      end

      if attributes.has_key?(:'iconUrl')
        self.iconUrl = attributes[:'iconUrl']
      end

      if attributes.has_key?(:'uri')
        self.uri = attributes[:'uri']
      end

      if attributes.has_key?(:'fallback')
        self.fallback = attributes[:'fallback']
      end

      if attributes.has_key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.has_key?(:'extraChannelOptions')
        self.extraChannelOptions = attributes[:'extraChannelOptions']
      end

      if attributes.has_key?(:'openOnReceive')
        self.openOnReceive = attributes[:'openOnReceive']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if @text.nil?
        invalid_properties.push("invalid value for 'text', text cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      return false if @text.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          text == o.text &&
          payload == o.payload &&
          metadata == o.metadata &&
          amount == o.amount &&
          currency == o.currency &&
          default == o.default &&
          iconUrl == o.iconUrl &&
          uri == o.uri &&
          fallback == o.fallback &&
          size == o.size &&
          extraChannelOptions == o.extraChannelOptions &&
          openOnReceive == o.openOnReceive
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, text, payload, metadata, amount, currency, default, iconUrl, uri, fallback, size, extraChannelOptions, openOnReceive].hash
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
        temp_model = SmoochApi.const_get(type).new
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
