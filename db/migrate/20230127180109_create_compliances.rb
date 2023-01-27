class CreateCompliances < ActiveRecord::Migration[6.0]
  def change
    create_table :compliances do |t|
      t.string :epc_type
      t.boolean :eng_heritage
      t.string :br_stage
      t.string :air_con_installed
      t.string :air_con_kw
      t.string :air_con_inspection
      t.string :alt_sys_consider

      t.timestamps
    end
  end
end
