class CreateGlasses < ActiveRecord::Migration[6.0]
  def change
    create_table :glasses do |t|
      t.string :u_value
      t.string :tot_sol_trans
      t.string :lig_sol_trans

      t.timestamps
    end
  end
end
