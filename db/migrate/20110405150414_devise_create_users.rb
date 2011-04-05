class DeviseCreateUsers < ActiveRecord::Migration
  def self.up
    create_table(:users) do |t|
      t.string :github_handle
      t.trackable

      t.timestamps
    end

    add_index :users, :github_handle,                :unique => true
  end

  def self.down
    drop_table :users
  end
end
