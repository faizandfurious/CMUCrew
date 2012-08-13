class Lineup < ActiveRecord::Base
	attr_accessible :boat_id, :name

	#Relationships
	belongs_to :boat
	has_many :users, :through => :user_lineups

	#Scopes

	#Constants



end
