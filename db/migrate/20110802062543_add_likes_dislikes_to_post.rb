class AddLikesDislikesToPost < ActiveRecord::Migration
  def self.up
    add_column :posts, :likes, :integer
    add_column :posts, :dislikes, :integer
  end

  def self.down
    remove_column :posts, :dislikes
    remove_column :posts, :likes
  end
end
