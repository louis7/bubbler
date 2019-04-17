class User < ActiveRecord::Base
  has_many :posts
  has_many :convos, through: :posts
  has_many :usercomment
end
