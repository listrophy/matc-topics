class User < ActiveRecord::Base
  devise :omniauthable, :trackable

  attr_accessible :github_handle, :github_token

  def self.find_for_github_oauth(access_token, signed_in_resource=nil)
    nickname = access_token['user_info']['nickname']

    if user = User.find_by_github_handle(nickname)
      user
    else
      User.create!(:github_handle => nickname, :github_token => access_token['credentials']['token'])
    end
  end

end

# access_token looks like:
#
# --- 
# provider: github
# uid: 26813
# credentials: 
  # token: some_long_hexadecimal_number
# user_info: 
  # nickname: listrophy
  # email: brad@bendyworks.com
  # name: Bradley Grzesiak
  # urls: 
    # GitHub: http://github.com/listrophy
    # Blog: http://bendyworks.com
# extra: 
  # user_hash: 
    # plan: 
      # name: free
      # collaborators: 0
      # space: 307200
      # private_repos: 0
    # gravatar_id: 87f1b755fcd547503f3be28d77f26569
    # company: bendyworks llc
    # name: Bradley Grzesiak
    # created_at: 2008/09/29 15:56:50 -0700
    # location: Madison, WI
    # disk_usage: 13268
    # collaborators: 0
    # public_repo_count: 14
    # public_gist_count: 13
    # blog: http://bendyworks.com
    # following_count: 1
    # id: 26813
    # owned_private_repo_count: 0
    # private_gist_count: 1
    # type: User
    # permission: 
    # total_private_repo_count: 0
    # followers_count: 14
    # login: listrophy
    # email: brad@bendyworks.com

