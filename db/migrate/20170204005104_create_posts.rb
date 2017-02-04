class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :contenido
      t.string :tipo_post
      t.integer :me_gusta
      t.references :user, foreign_key: true
      t.references :channel, foreign_key: true

      t.timestamps
    end
  end
end
