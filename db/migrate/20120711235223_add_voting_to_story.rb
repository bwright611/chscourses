class AddVotingToStory < ActiveRecord::Migration
  def up
    add_column :stories, :up, :integer
    add_column :stories, :down, :integer
  end
  def down
    remove_column :stories, :up
    remove_column :stories, :down
  end
  
end
