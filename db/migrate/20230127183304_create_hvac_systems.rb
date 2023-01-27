class CreateHvacSystems < ActiveRecord::Migration[6.0]
  def change
    create_table :hvac_systems do |t|
      t.integer :isbem_id
      t.string :type
      t.string :heat_source
      t.boolean :chp
      t.string :fuel_type
      t.string :fuel_type_cool
      t.string :heat_rec_system
      t.integer :heat_rec_seff
      t.boolean :heat_rec_var_eff
      t.float :cool_sseer
      t.float :heat_sseff
      t.float :aux_energy_corr
      t.boolean :variable_speed_pump
      t.float :heat_gen_seff
      t.string :eff_default_heat
      t.string :cool_gen_seer
      t.string :eff_default_cool
      t.string :cool_gen_eer
      t.string :metering
      t.boolean :sfp_check
      t.integer :sfp
      t.integer :duct_leakage_pc
      t.string :chiller_type
      t.boolean :cen_time_ctrl
      t.boolean :room_time_ctrl
      t.boolean :room_temp_ctrl
      t.boolean :weather_comp

      t.timestamps
    end
  end
end
