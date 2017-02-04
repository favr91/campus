class CreateJoinTableAreaChannel < ActiveRecord::Migration[5.0]
  def change
    create_join_table :Areas, :Channels do |t|
      # t.index [:area_id, :channel_id]
      # t.index [:channel_id, :area_id]
    end
  end
end
