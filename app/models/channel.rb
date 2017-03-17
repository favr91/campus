class Channel < ApplicationRecord
  #has_and_belongs_to_many :areas #Crea una entidad intermedia en la base de datos llamada AreaChannel
  belongs_to :user
  has_many :fields
  has_many :areas, through: :fields
end
