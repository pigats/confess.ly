class Confession < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_and_belongs_to_many :tags

	validates_presence_of :url, :transcript
	validates_length_of :transcript, :maximum => 250

end
