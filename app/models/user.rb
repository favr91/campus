require "httparty"
require "json"

class User < ApplicationRecord
  has_many :comments
  has_many :posts, dependent: :destroy
  has_many :channels
  has_many :knowledges
  has_one :profile
  has_many :areas, through: :knowledges
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :anti_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :anti_friends, :through => :anti_friendships, :source => :user
  acts_as_commontator
  acts_as_followable
  acts_as_follower

  mount_uploader :image, ImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  include HTTParty
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   def self.validacion

      @json = get("http://localhost:4040/graduates.json")
      @json = @json.to_json
      @parsed_json = ActiveSupport::JSON.decode(@json)
      @no = @parsed_json

      return @no

    end

    def self.search(search)
      where("nombre LIKE ?", "%#{search}%")
      where("apellido LIKE ?", "%#{search}%")
    end

end
