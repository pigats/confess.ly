class AddConfessionIdToComment < ActiveRecord::Migration
  def change
    add_column :comments, :confession_id, :integer
  end
end
