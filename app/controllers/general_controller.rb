class GeneralController < ApplicationController
  def self.import(file_input)
    general_params = parser(file_input)
    return false unless validate_fields(general_params)

    general = General.new(general_params)
    general.save
  end

  def general_params
    params.require(:general).permit(:file)
  end

  def self.parser(file)
    hash_general = {}
    file_input = File.read(file)
    file_input.split("\n").each do |row|
      row.lstrip!
      return hash_general if row.match(/\.\./)
      next if row.match(/ˆ\$/)

      regex = /(\S*).*=(.*)/.match(row)
      next if regex.blank?

      key = regex[1].gsub('-', '_').downcase
      value = regex[2].lstrip
      puts "KEY #{key} VALUE #{value}"
      next if key.match(/sbem_project/) && value.match(/GENERAL/)

      hash_general[key.to_sym] = value
    end
    hash_general
  end

  def self.validate_fields(hash_general)
    hash_general.each_key do |key|
      return false unless General.column_names.include?(key.to_s)
    end
    true
  end
end
