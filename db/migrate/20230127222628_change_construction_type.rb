class ChangeConstructionType < ActiveRecord::Migration[6.0]
  def change
    rename_column :constructions, :type, :construction_type
  end
end
