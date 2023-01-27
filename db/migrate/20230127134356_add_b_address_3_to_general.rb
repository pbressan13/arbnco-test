class AddBAddress3ToGeneral < ActiveRecord::Migration[6.0]
  def change
    add_column :generals, :fieldname, :string
  end
end
