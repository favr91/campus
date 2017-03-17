class Post < ApplicationRecord
  acts_as_votable
  acts_as_commentable
  has_many :comments
  belongs_to :user, dependent: :destroy # foreign key - user_id
  belongs_to :channel # foreign key - channel_id

  validates_presence_of :contenido
  mount_uploader :image, ImageUploader
end
