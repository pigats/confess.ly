class ConfessionsTagsJoinTable < ActiveRecord::Migration
  def up
  	create_table :confessions_tags, :id => false do |t|
  		t.integer :confession_id
  		t.integer :tag_id  		
  	end
  end

  def down
  	drop_table :confessions_tags
  end
end
