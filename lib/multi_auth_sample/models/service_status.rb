# multi_auth_sample
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MultiAuthSample
  # ServiceStatus Model.
  class ServiceStatus < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :app

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :moto

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :notes

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :users

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :time

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :os

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :php_version

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['app'] = 'app'
      @_hash['moto'] = 'moto'
      @_hash['notes'] = 'notes'
      @_hash['users'] = 'users'
      @_hash['time'] = 'time'
      @_hash['os'] = 'os'
      @_hash['php_version'] = 'php_version'
      @_hash['status'] = 'status'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        app
        moto
        notes
        users
        time
        os
        php_version
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(status = nil,
                   app = SKIP,
                   moto = SKIP,
                   notes = SKIP,
                   users = SKIP,
                   time = SKIP,
                   os = SKIP,
                   php_version = SKIP,
                   additional_properties = {})
      @app = app unless app == SKIP
      @moto = moto unless moto == SKIP
      @notes = notes unless notes == SKIP
      @users = users unless users == SKIP
      @time = time unless time == SKIP
      @os = os unless os == SKIP
      @php_version = php_version unless php_version == SKIP
      @status = status

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      status = hash.key?('status') ? hash['status'] : nil
      app = hash.key?('app') ? hash['app'] : SKIP
      moto = hash.key?('moto') ? hash['moto'] : SKIP
      notes = hash.key?('notes') ? hash['notes'] : SKIP
      users = hash.key?('users') ? hash['users'] : SKIP
      time = hash.key?('time') ? hash['time'] : SKIP
      os = hash.key?('os') ? hash['os'] : SKIP
      php_version = hash.key?('php_version') ? hash['php_version'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      ServiceStatus.new(status,
                        app,
                        moto,
                        notes,
                        users,
                        time,
                        os,
                        php_version,
                        hash)
    end
  end
end
