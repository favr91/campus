class CreateTimelines < ActiveRecord::Migration[5.0]
  def change
    create_table :timelines do |t|
      t.references :area, foreign_key: true
      t.references :channel, foreign_key: true

      t.timestamps
    end
  end
end
