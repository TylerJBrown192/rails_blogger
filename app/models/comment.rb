class Comment < ActiveRecord::Base
  belongs_to :post

  validates :user_comment, :presence => true
end
