class AddCedulaToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :cedula, :string
  end
end
