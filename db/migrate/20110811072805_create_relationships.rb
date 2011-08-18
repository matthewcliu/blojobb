class CreateRelationships < ActiveRecord::Migration
  def self.up
    create_table :relationships do |t|
      t.integer :post_id
      t.integer :tag_id

      t.timestamps
    end
    add_index :relationships, :post_id
    add_index :relationships, :tag_id
    add_index :relationships, [:post_id, :tag_id], :unique => true
    
  end

  def self.down
    drop_table :relationships
  end
end
