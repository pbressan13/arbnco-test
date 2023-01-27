class CreateDhwGenerators < ActiveRecord::Migration[6.0]
  def change
    create_table :dhw_generators do |t|
      t.integer :isbem_id
      t.string :heat_gen_type
      t.integer :dhw_gen_seff
      t.string :fuel_type
      t.boolean :store_system

      t.timestamps
    end
  end
end
