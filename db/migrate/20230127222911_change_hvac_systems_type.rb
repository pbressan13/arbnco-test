class ChangeHvacSystemsType < ActiveRecord::Migration[6.0]
  def change
    rename_column :hvac_systems, :type, :hvac_system_type
  end
end
