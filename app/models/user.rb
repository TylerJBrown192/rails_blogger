class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts,    dependent: :destroy
  has_many :comments, dependent: :destroy
  # The above 'dependent association' will destroy all Posts and Comments that
  # are tied to a User when that one User is destroyed.
end
