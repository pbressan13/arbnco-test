class CreateWalls < ActiveRecord::Migration[6.0]
  def change
    create_table :walls do |t|
      t.integer :multiplier
      t.string :type
      t.string :type_env
      t.float :length
      t.integer :pitch
      t.float :area
      t.string :orientation
      t.string :construction

      t.timestamps
    end
  end
end
