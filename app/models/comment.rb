class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user

  validates :user_comment, :presence => true
end
