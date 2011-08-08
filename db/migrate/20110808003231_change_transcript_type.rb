class ChangeTranscriptType < ActiveRecord::Migration
  def up
		change_table :confessions do |t|
  		t.change :transcript, :text
		end  	
  end

  def down
  end
end
