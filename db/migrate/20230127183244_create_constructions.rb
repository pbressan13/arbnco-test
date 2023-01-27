class CreateConstructions < ActiveRecord::Migration[6.0]
  def change
    create_table :constructions do |t|
      t.string :type
      t.float :u_value
      t.boolean :u_value_corr
      t.string :cm
      t.boolean :metal_cladding

      t.timestamps
    end
  end
end
