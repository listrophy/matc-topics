class Choice < ActiveRecord::Base
  has_many :votes
  validates_presence_of :name
end
