class HelperController < ApplicationController
  def self.import(file_upload)
    return false if file_upload.blank? || file_upload&.file.blank?

    objects_created = []

    model_params = parser(file_upload.file)

    model_params.each do |model_name, params|
      model_name = model_name.gsub(/\d+/, '').split(/ |-/).map(&:capitalize).join('')
      # check if model_name is a valid model
      next unless Object.const_defined?(model_name)

      model = model_name.constantize
      values = serialize(params, model)
      next if values.blank?

      model_object = model.new(values)

      model_object.file_upload_id = file_upload.file.id
      model_object.save
      objects_created << model_object
    end
    objects_created
  end

  def self.parser(file)
    hash_model = {}
    count = 0
    formatted_name = ''
    file.open do |file_input|
      File.read(file_input).split("\n").each do |row|
        row.lstrip!
        regex = /(\S*).*=(.*)/.match(row)
        next if row.match(/\.\./) || row.match(/ˆ\$/) || regex.blank?

        key = regex[1].gsub('-', '_').downcase
        value = regex[2].lstrip
        formatted_name = if key.match(/".*?"/)
                           count += 1
                           "#{value.capitalize}#{count}"
                         else
                           formatted_name
                         end
        if hash_model[formatted_name].nil?
          hash_model[formatted_name] = {}
        else
          hash_model[formatted_name][key.to_sym] = value
        end
      end
    end
    hash_model
  end

  def self.serialize(hash_model, model)
    hash_model.each do |key, value|
      key == 'type' && key = model.class.name.downcase._.key
      unless model.column_names.include?(key.to_s)
        hash_model.delete(key)
        next
      end

      case model.column_for_attribute(key.to_s).type
      when :float
        hash_model[key] = value.to_f
      when :boolean
        hash_model[key] = value.upcase == 'YES'
      when :integer
        hash_model[key] = value.to_i
      when :date
        value = value.gsub(/{|}| /, '').gsub(',', '-')
        hash_model[key] = Date.parse(value, '%Y-%m-%d')
      else
        hash_model[key] = value
      end
    end
    hash_model
  end
end
