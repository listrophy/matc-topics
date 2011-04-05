class User < ActiveRecord::Base
  devise :omniauthable, :trackable

  attr_accessible :github_handle
end
