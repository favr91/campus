class AddImageToChannels < ActiveRecord::Migration[5.0]
  def change
    add_column :channels, :image, :string
  end
end
