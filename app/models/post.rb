class Post < ApplicationRecord
  has_many :comments
  belongs_to :user, dependent: :destroy # foreign key - user_id
  belongs_to :channel # foreign key - channel_id
end
