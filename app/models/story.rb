class Story < ActiveRecord::Base
  belongs_to :user
  attr_accessible :body, :title, :url
end
