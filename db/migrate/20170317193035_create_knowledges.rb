class CreateKnowledges < ActiveRecord::Migration[5.0]
  def change
    create_table :knowledges do |t|
      t.references :area, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
