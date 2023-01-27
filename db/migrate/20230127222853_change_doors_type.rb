class ChangeDoorsType < ActiveRecord::Migration[6.0]
  def change
    rename_column :doors, :type, :door_type
  end
end
