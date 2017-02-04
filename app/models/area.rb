class Area < ApplicationRecord
	has_and_belongs_to_many :users  #Crea una entidad intermedia en la base de datos llamada AreaUser	
	has_and_belongs_to_many :channels #Crea una entidad intermedia en la base de datos llamada AreaChannel
end
