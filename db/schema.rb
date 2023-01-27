# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_01_27_183327) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "compliances", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "epc_type"
    t.boolean "eng_heritage"
    t.string "br_stage"
    t.string "air_con_installed"
    t.string "air_con_kw"
    t.string "air_con_inspection"
    t.string "alt_sys_consider"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "constructions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "type"
    t.float "u_value"
    t.boolean "u_value_corr"
    t.string "cm"
    t.boolean "metal_cladding"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dhw_generators", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "isbem_id"
    t.string "heat_gen_type"
    t.integer "dhw_gen_seff"
    t.string "fuel_type"
    t.boolean "store_system"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "doors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.float "area"
    t.string "construction"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "file_uploads", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "file_name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "generals", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "b_type"
    t.string "weather"
    t.string "p_name"
    t.string "b_address_0"
    t.string "b_address_1"
    t.string "b_address_2"
    t.string "b_city"
    t.string "b_postcode"
    t.string "c_name"
    t.string "c_telephone"
    t.string "c_address"
    t.string "c_email"
    t.string "c_accred_scheme_web"
    t.string "c_city"
    t.string "c_postcode"
    t.string "c_reg_number"
    t.string "c_reg_number_s"
    t.string "c_reg_number_ir"
    t.string "c_accred_scheme"
    t.string "c_emp_trad_name"
    t.string "c_emp_trad_address"
    t.string "c_emp_trad_number"
    t.string "c_rel_part_disc"
    t.string "transaction_type"
    t.string "c_qualifications"
    t.string "soft_comp_name"
    t.string "interface_val"
    t.string "interface"
    t.string "interface_version"
    t.string "path_file_interface"
    t.string "act_not"
    t.integer "building_area"
    t.string "elec_power_factor"
    t.string "nos_level"
    t.string "c_insurer"
    t.string "c_ins_pol_number"
    t.date "c_ins_eff_date"
    t.date "c_ins_exp_date"
    t.integer "c_ins_pi_limit"
    t.date "b_insp_date"
    t.integer "uprn"
    t.string "landmark_environment"
    t.integer "light_metering"
    t.integer "build_orientation"
    t.boolean "html_dr_reports"
    t.integer "max_storey"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "fieldname"
  end

  create_table "glasses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "u_value"
    t.string "tot_sol_trans"
    t.string "lig_sol_trans"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hvac_systems", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "isbem_id"
    t.string "type"
    t.string "heat_source"
    t.boolean "chp"
    t.string "fuel_type"
    t.string "fuel_type_cool"
    t.string "heat_rec_system"
    t.integer "heat_rec_seff"
    t.boolean "heat_rec_var_eff"
    t.float "cool_sseer"
    t.float "heat_sseff"
    t.float "aux_energy_corr"
    t.boolean "variable_speed_pump"
    t.float "heat_gen_seff"
    t.string "eff_default_heat"
    t.string "cool_gen_seer"
    t.string "eff_default_cool"
    t.string "cool_gen_eer"
    t.string "metering"
    t.boolean "sfp_check"
    t.integer "sfp"
    t.integer "duct_leakage_pc"
    t.string "chiller_type"
    t.boolean "cen_time_ctrl"
    t.boolean "room_time_ctrl"
    t.boolean "room_temp_ctrl"
    t.boolean "weather_comp"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rec_users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "code"
    t.string "user_in_out"
    t.string "rec_comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "walls", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "multiplier"
    t.string "type"
    t.string "type_env"
    t.float "length"
    t.integer "pitch"
    t.float "area"
    t.string "orientation"
    t.string "construction"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "windows", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "multiplier"
    t.float "area"
    t.integer "dev_proj_ratio"
    t.float "frame_factor"
    t.integer "roof_light_cover"
    t.integer "shading_factor"
    t.float "aspect_ratio"
    t.string "glass"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "zones", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "isbem_id"
    t.integer "activity"
    t.string "activity_name"
    t.integer "multiplier"
    t.float "area"
    t.float "height"
    t.string "vent_zone_hvac"
    t.string "q_v_type"
    t.string "f_ctrl_vent_dem"
    t.string "heat_rec_system"
    t.float "heat_rec_seff"
    t.boolean "heat_rec_var_eff"
    t.boolean "hepa_filter"
    t.boolean "vent_mech_exh"
    t.boolean "destrat_fan"
    t.float "vent_sfp"
    t.float "sfp_tu"
    t.integer "q50_inf"
    t.string "dhw_generator"
    t.integer "dhw_pipe_len"
    t.string "light_case"
    t.string "light_type"
    t.boolean "light_display_eff"
    t.string "light_control"
    t.boolean "light_dl_aut_zone"
    t.string "light_occ_sens_t"
    t.boolean "light_time_switch"
    t.float "jnct_roof_wall_mc"
    t.float "jnct_wall_grnd_mc"
    t.float "jnct_wall_wall_mc"
    t.float "jnct_wall_flr_mc"
    t.float "jnct_lintel_mc"
    t.float "jnct_sill_mc"
    t.float "jnct_jamb_mc"
    t.float "jnct_roof_wall"
    t.float "jnct_wall_grnd"
    t.float "jnct_wall_wall"
    t.float "jnct_wall_flr"
    t.float "jnct_lintel"
    t.float "jnct_sill"
    t.float "jnct_jamb"
    t.string "jnct_accr_detail"
    t.string "jnct_accr_detail_mc"
    t.boolean "night_cooling"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
