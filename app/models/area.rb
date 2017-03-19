class Area < ApplicationRecord
	#has_and_belongs_to_many :users  #Crea una entidad intermedia en la base de datos llamada AreaUser
	#has_and_belongs_to_many :channels #Crea una entidad intermedia en la base de datos llamada AreaChannel
  has_many :knowledges
  has_many :users, through: :knowledges
  has_many :timelines
  has_many :channels, through: :timelines
end
