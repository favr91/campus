class User < ApplicationRecord
  #has_and_belongs_to_many :areas # Crea una entidad intermedia en la base de datos llamada AreaUSer
  has_many :comments
  has_many :posts
  has_many :channels
  has_many :followers
  has_many :followings
  has_many :knowledges
  has_many :areas, through: :knowledges
  acts_as_follower
  acts_as_followable

  mount_uploader :image, ImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
