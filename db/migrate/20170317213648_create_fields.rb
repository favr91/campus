class CreateFields < ActiveRecord::Migration[5.0]
  def change
    create_table :fields do |t|
      t.references :area, foreign_key: true
      t.references :channel, foreign_key: true

      t.timestamps
    end
  end
end
