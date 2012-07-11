class Story < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  attr_accessible :body, :title, :url
  
  validates :title, :presence => true
  validates :url, :presence => true, :if => "body.blank?"
  validates :body, :presence => true, :if => "url.blank?"
end
