class Post < ActiveRecord::Base
  belongs_to :user
  has_many    :convo
  has_many   :usercomments
end
