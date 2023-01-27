class CreateDoors < ActiveRecord::Migration[6.0]
  def change
    create_table :doors do |t|
      t.float :area
      t.string :construction
      t.string :type

      t.timestamps
    end
  end
end
