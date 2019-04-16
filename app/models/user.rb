class User < ActiveRecord::Base
  has_many :posts
  has_many :convos
  has_many :usercomment,through: :convos
end
