class Usercomment < ActiveRecord::Base
  has_many :convos
  has_many :users,through: :convos

end
