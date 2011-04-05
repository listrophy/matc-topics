class AddGithubTokenToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :github_token, :string
  end

  def self.down
    remove_column :users, :github_token
  end
end
