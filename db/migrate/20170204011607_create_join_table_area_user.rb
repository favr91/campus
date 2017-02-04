class CreateJoinTableAreaUser < ActiveRecord::Migration[5.0]
  def change
    create_join_table :Areas, :Users do |t|
      # t.index [:area_id, :user_id]
      # t.index [:user_id, :area_id]
    end
  end
end
