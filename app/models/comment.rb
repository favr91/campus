class Comment < ApplicationRecord
  belongs_to :user, dependent: :destroy # foreign key - user_id
  belongs_to :post, dependent: :destroy # foreign key - post_id
end
