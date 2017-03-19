class DropFields < ActiveRecord::Migration[5.0]
  def change
    drop_table :fields
  end
end
