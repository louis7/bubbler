class Convo < ActiveRecord::Base
  belongs_to :post
  has_many :usercomments
  has_many :users, through: :usercomments
end
