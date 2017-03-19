class Channel < ApplicationRecord
  #has_and_belongs_to_many :areas #Crea una entidad intermedia en la base de datos llamada AreaChannel
  belongs_to :user
  has_many :timelines
  has_many :areas, through: :timelines
  mount_uploader :image, ImageUploader
end
