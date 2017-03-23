class Post < ApplicationRecord
  acts_as_votable
  acts_as_commentable
  has_many :comments
  belongs_to :user
  belongs_to :channel

  validates_presence_of :contenido
  mount_uploader :image, ImageUploader
end
