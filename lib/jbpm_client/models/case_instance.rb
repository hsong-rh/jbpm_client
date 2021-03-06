=begin
#jbpm

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 7.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module JBPMAPIClient

  class CaseInstance
    attr_accessor :case_id

    attr_accessor :case_description

    attr_accessor :case_owner

    attr_accessor :case_status

    attr_accessor :case_definition_id

    attr_accessor :container_id

    attr_accessor :case_started_at

    attr_accessor :case_completed_at

    attr_accessor :case_completion_msg

    attr_accessor :case_sla_compliance

    attr_accessor :case_sla_due_date

    attr_accessor :case_file

    attr_accessor :case_milestones

    attr_accessor :case_stages

    attr_accessor :case_roles


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'case_id' => :'case-id',
        :'case_description' => :'case-description',
        :'case_owner' => :'case-owner',
        :'case_status' => :'case-status',
        :'case_definition_id' => :'case-definition-id',
        :'container_id' => :'container-id',
        :'case_started_at' => :'case-started-at',
        :'case_completed_at' => :'case-completed-at',
        :'case_completion_msg' => :'case-completion-msg',
        :'case_sla_compliance' => :'case-sla-compliance',
        :'case_sla_due_date' => :'case-sla-due-date',
        :'case_file' => :'case-file',
        :'case_milestones' => :'case-milestones',
        :'case_stages' => :'case-stages',
        :'case_roles' => :'case-roles'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'case_id' => :'String',
        :'case_description' => :'String',
        :'case_owner' => :'String',
        :'case_status' => :'Integer',
        :'case_definition_id' => :'String',
        :'container_id' => :'String',
        :'case_started_at' => :'DateTime',
        :'case_completed_at' => :'DateTime',
        :'case_completion_msg' => :'String',
        :'case_sla_compliance' => :'Integer',
        :'case_sla_due_date' => :'DateTime',
        :'case_file' => :'CaseFile',
        :'case_milestones' => :'Array<CaseMilestone>',
        :'case_stages' => :'Array<CaseStage>',
        :'case_roles' => :'Array<CaseRoleAssignment>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'case-id')
        self.case_id = attributes[:'case-id']
      end

      if attributes.has_key?(:'case-description')
        self.case_description = attributes[:'case-description']
      end

      if attributes.has_key?(:'case-owner')
        self.case_owner = attributes[:'case-owner']
      end

      if attributes.has_key?(:'case-status')
        self.case_status = attributes[:'case-status']
      end

      if attributes.has_key?(:'case-definition-id')
        self.case_definition_id = attributes[:'case-definition-id']
      end

      if attributes.has_key?(:'container-id')
        self.container_id = attributes[:'container-id']
      end

      if attributes.has_key?(:'case-started-at')
        self.case_started_at = attributes[:'case-started-at']
      end

      if attributes.has_key?(:'case-completed-at')
        self.case_completed_at = attributes[:'case-completed-at']
      end

      if attributes.has_key?(:'case-completion-msg')
        self.case_completion_msg = attributes[:'case-completion-msg']
      end

      if attributes.has_key?(:'case-sla-compliance')
        self.case_sla_compliance = attributes[:'case-sla-compliance']
      end

      if attributes.has_key?(:'case-sla-due-date')
        self.case_sla_due_date = attributes[:'case-sla-due-date']
      end

      if attributes.has_key?(:'case-file')
        self.case_file = attributes[:'case-file']
      end

      if attributes.has_key?(:'case-milestones')
        if (value = attributes[:'case-milestones']).is_a?(Array)
          self.case_milestones = value
        end
      end

      if attributes.has_key?(:'case-stages')
        if (value = attributes[:'case-stages']).is_a?(Array)
          self.case_stages = value
        end
      end

      if attributes.has_key?(:'case-roles')
        if (value = attributes[:'case-roles']).is_a?(Array)
          self.case_roles = value
        end
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
          case_id == o.case_id &&
          case_description == o.case_description &&
          case_owner == o.case_owner &&
          case_status == o.case_status &&
          case_definition_id == o.case_definition_id &&
          container_id == o.container_id &&
          case_started_at == o.case_started_at &&
          case_completed_at == o.case_completed_at &&
          case_completion_msg == o.case_completion_msg &&
          case_sla_compliance == o.case_sla_compliance &&
          case_sla_due_date == o.case_sla_due_date &&
          case_file == o.case_file &&
          case_milestones == o.case_milestones &&
          case_stages == o.case_stages &&
          case_roles == o.case_roles
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [case_id, case_description, case_owner, case_status, case_definition_id, container_id, case_started_at, case_completed_at, case_completion_msg, case_sla_compliance, case_sla_due_date, case_file, case_milestones, case_stages, case_roles].hash
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
        temp_model = JBPMAPIClient.const_get(type).new
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
