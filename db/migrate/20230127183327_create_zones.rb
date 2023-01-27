class CreateZones < ActiveRecord::Migration[6.0]
  def change
    create_table :zones do |t|
      t.integer :isbem_id
      t.integer :activity
      t.string :activity_name
      t.integer :multiplier
      t.float :area
      t.float :height
      t.string :vent_zone_hvac
      t.string :q_v_type
      t.string :f_ctrl_vent_dem
      t.string :heat_rec_system
      t.float :heat_rec_seff
      t.boolean :heat_rec_var_eff
      t.boolean :hepa_filter
      t.boolean :vent_mech_exh
      t.boolean :destrat_fan
      t.float :vent_sfp
      t.float :sfp_tu
      t.integer :q50_inf
      t.string :dhw_generator
      t.integer :dhw_pipe_len
      t.string :light_case
      t.string :light_type
      t.boolean :light_display_eff
      t.string :light_control
      t.boolean :light_dl_aut_zone
      t.string :light_occ_sens_t
      t.boolean :light_time_switch
      t.float :jnct_roof_wall_mc
      t.float :jnct_wall_grnd_mc
      t.float :jnct_wall_wall_mc
      t.float :jnct_wall_flr_mc
      t.float :jnct_lintel_mc
      t.float :jnct_sill_mc
      t.float :jnct_jamb_mc
      t.float :jnct_roof_wall
      t.float :jnct_wall_grnd
      t.float :jnct_wall_wall
      t.float :jnct_wall_flr
      t.float :jnct_lintel
      t.float :jnct_sill
      t.float :jnct_jamb
      t.string :jnct_accr_detail
      t.string :jnct_accr_detail_mc
      t.boolean :night_cooling

      t.timestamps
    end
  end
end
