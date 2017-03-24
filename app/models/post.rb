class Post < ApplicationRecord
  acts_as_votable
  has_many :comments
  belongs_to :user
  belongs_to :channel

  validates :contenido, :presence => true, :if => :imagenvacia?

  def imagenvacia?
    image.nil?
  end
  mount_uploader :image, ImageUploader

end
