class AddDefaultToPosts < ActiveRecord::Migration
  def self.up
    change_column :posts, :likes, :integer, :default => 0
    change_column :posts, :dislikes, :integer, :default => 0
  end

  def self.down
    remove_column :posts, :dislikes
    remove_column :posts, :likes
  end
end
