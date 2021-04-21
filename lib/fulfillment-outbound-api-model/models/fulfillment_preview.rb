=begin
#Selling Partner APIs for Fulfillment Outbound

#The Selling Partner API for Fulfillment Outbound lets you create applications that help a seller fulfill Multi-Channel Fulfillment orders using their inventory in Amazon's fulfillment network. You can get information on both potential and existing fulfillment orders.

OpenAPI spec version: 2020-07-01

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.24
=end

require 'date'

module AmzSpApi::FulfillmentOutboundApiModel
  # Information about a fulfillment order preview, including delivery and fee information based on shipping method.
  class FulfillmentPreview
    attr_accessor :shipping_speed_category

    attr_accessor :scheduled_delivery_info

    # When true, this fulfillment order preview is fulfillable.
    attr_accessor :is_fulfillable

    # When true, this fulfillment order preview is for COD (Cash On Delivery).
    attr_accessor :is_cod_capable

    attr_accessor :estimated_shipping_weight

    attr_accessor :estimated_fees

    attr_accessor :fulfillment_preview_shipments

    attr_accessor :unfulfillable_preview_items

    attr_accessor :order_unfulfillable_reasons

    # The marketplace the fulfillment order is placed against.
    attr_accessor :marketplace_id

    # A list of features and their fulfillment policies to apply to the order.
    attr_accessor :feature_constraints

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'shipping_speed_category' => :'shippingSpeedCategory',
        :'scheduled_delivery_info' => :'scheduledDeliveryInfo',
        :'is_fulfillable' => :'isFulfillable',
        :'is_cod_capable' => :'isCODCapable',
        :'estimated_shipping_weight' => :'estimatedShippingWeight',
        :'estimated_fees' => :'estimatedFees',
        :'fulfillment_preview_shipments' => :'fulfillmentPreviewShipments',
        :'unfulfillable_preview_items' => :'unfulfillablePreviewItems',
        :'order_unfulfillable_reasons' => :'orderUnfulfillableReasons',
        :'marketplace_id' => :'marketplaceId',
        :'feature_constraints' => :'featureConstraints'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'shipping_speed_category' => :'Object',
        :'scheduled_delivery_info' => :'Object',
        :'is_fulfillable' => :'Object',
        :'is_cod_capable' => :'Object',
        :'estimated_shipping_weight' => :'Object',
        :'estimated_fees' => :'Object',
        :'fulfillment_preview_shipments' => :'Object',
        :'unfulfillable_preview_items' => :'Object',
        :'order_unfulfillable_reasons' => :'Object',
        :'marketplace_id' => :'Object',
        :'feature_constraints' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AmzSpApi::FulfillmentOutboundApiModel::FulfillmentPreview` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AmzSpApi::FulfillmentOutboundApiModel::FulfillmentPreview`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'shipping_speed_category')
        self.shipping_speed_category = attributes[:'shipping_speed_category']
      end

      if attributes.key?(:'scheduled_delivery_info')
        self.scheduled_delivery_info = attributes[:'scheduled_delivery_info']
      end

      if attributes.key?(:'is_fulfillable')
        self.is_fulfillable = attributes[:'is_fulfillable']
      end

      if attributes.key?(:'is_cod_capable')
        self.is_cod_capable = attributes[:'is_cod_capable']
      end

      if attributes.key?(:'estimated_shipping_weight')
        self.estimated_shipping_weight = attributes[:'estimated_shipping_weight']
      end

      if attributes.key?(:'estimated_fees')
        self.estimated_fees = attributes[:'estimated_fees']
      end

      if attributes.key?(:'fulfillment_preview_shipments')
        self.fulfillment_preview_shipments = attributes[:'fulfillment_preview_shipments']
      end

      if attributes.key?(:'unfulfillable_preview_items')
        self.unfulfillable_preview_items = attributes[:'unfulfillable_preview_items']
      end

      if attributes.key?(:'order_unfulfillable_reasons')
        self.order_unfulfillable_reasons = attributes[:'order_unfulfillable_reasons']
      end

      if attributes.key?(:'marketplace_id')
        self.marketplace_id = attributes[:'marketplace_id']
      end

      if attributes.key?(:'feature_constraints')
        if (value = attributes[:'feature_constraints']).is_a?(Array)
          self.feature_constraints = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @shipping_speed_category.nil?
        invalid_properties.push('invalid value for "shipping_speed_category", shipping_speed_category cannot be nil.')
      end

      if @is_fulfillable.nil?
        invalid_properties.push('invalid value for "is_fulfillable", is_fulfillable cannot be nil.')
      end

      if @is_cod_capable.nil?
        invalid_properties.push('invalid value for "is_cod_capable", is_cod_capable cannot be nil.')
      end

      if @marketplace_id.nil?
        invalid_properties.push('invalid value for "marketplace_id", marketplace_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @shipping_speed_category.nil?
      return false if @is_fulfillable.nil?
      return false if @is_cod_capable.nil?
      return false if @marketplace_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          shipping_speed_category == o.shipping_speed_category &&
          scheduled_delivery_info == o.scheduled_delivery_info &&
          is_fulfillable == o.is_fulfillable &&
          is_cod_capable == o.is_cod_capable &&
          estimated_shipping_weight == o.estimated_shipping_weight &&
          estimated_fees == o.estimated_fees &&
          fulfillment_preview_shipments == o.fulfillment_preview_shipments &&
          unfulfillable_preview_items == o.unfulfillable_preview_items &&
          order_unfulfillable_reasons == o.order_unfulfillable_reasons &&
          marketplace_id == o.marketplace_id &&
          feature_constraints == o.feature_constraints
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [shipping_speed_category, scheduled_delivery_info, is_fulfillable, is_cod_capable, estimated_shipping_weight, estimated_fees, fulfillment_preview_shipments, unfulfillable_preview_items, order_unfulfillable_reasons, marketplace_id, feature_constraints].hash
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
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
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
        AmzSpApi::FulfillmentOutboundApiModel.const_get(type).build_from_hash(value)
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
    end  end
end
