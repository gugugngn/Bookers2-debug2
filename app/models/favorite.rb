class Favorite < ApplicationRecord
  belongs_to :book
  belongs_to :user
  validates_uniqueness_of :book_id, scope: :user_id
  # userは1つの投稿に対して１つしかいいねをつけられない
end
