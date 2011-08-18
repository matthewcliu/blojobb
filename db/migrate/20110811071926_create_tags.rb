class CreateTags < ActiveRecord::Migration
  def self.up
    create_table :tags do |t|
      t.string :tag_value

      t.timestamps
    end
    add_index :tags, :tag_value
  end

  def self.down
    drop_table :tags
  end
end
