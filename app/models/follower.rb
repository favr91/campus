class Follower < ApplicationRecord
  belongs_to :user # foreign key - user_id
end
