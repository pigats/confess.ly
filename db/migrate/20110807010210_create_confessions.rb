class CreateConfessions < ActiveRecord::Migration
  def change
    create_table :confessions do |t|
      t.integer :user_id
      t.string :url
      t.string :transcript
      t.string :feelings
      t.integer :views, :default=>0
      t.integer :up, :default=>0
      t.integer :down, :default=>0

      t.timestamps
    end
  end
end
