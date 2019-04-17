class Usercomment < ActiveRecord::Base
  belongs_to :convo
  belongs_to :user
  belongs_to :post

end
