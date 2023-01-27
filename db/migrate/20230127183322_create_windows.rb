class CreateWindows < ActiveRecord::Migration[6.0]
  def change
    create_table :windows do |t|
      t.integer :multiplier
      t.float :area
      t.integer :dev_proj_ratio
      t.float :frame_factor
      t.integer :roof_light_cover
      t.integer :shading_factor
      t.float :aspect_ratio
      t.string :glass

      t.timestamps
    end
  end
end
