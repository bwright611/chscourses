class Comment < ActiveRecord::Base
  belongs_to :story
  belongs_to :user
  attr_accessible :body
end
