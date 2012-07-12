class AddVotingToComment < ActiveRecord::Migration
  def up
    add_column :comments, :up, :integer
    add_column :comments, :down, :integer
  end
  def down
    remove_column :comments, :up
    remove_column :comments, :down
  end
end
