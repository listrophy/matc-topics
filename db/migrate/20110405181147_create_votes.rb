class CreateVotes < ActiveRecord::Migration
  def self.up
    create_table :votes do |t|
      t.references :user
      t.references :choice

      t.timestamps
    end
    add_index :votes, [:user_id, :choice_id]
    add_index :votes, [:choice_id, :user_id]
  end

  def self.down
    remove_index :votes, :column => [:choice_id, :user_id]
    remove_index :votes, :column => [:user_id, :choice_id]
    drop_table :votes
  end
end
