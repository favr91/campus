class User < ApplicationRecord
  #has_and_belongs_to_many :areas # Crea una entidad intermedia en la base de datos llamada AreaUSer
  has_many :comments
  has_many :posts
  has_many :channels
  has_many :knowledges
  has_many :areas, through: :knowledges
  acts_as_followable
  acts_as_follower


  mount_uploader :image, ImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def follow(user_id)
    following_relationships.create(following_id: user_id)
  end

  def unfollow(user_id)
    following_relationships.find_by(following_id: user_id).destroy
  end
end
