class CreateFollowings < ActiveRecord::Migration[5.0]
  def change
    create_table :followings do |t|
      t.integer :followed_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
