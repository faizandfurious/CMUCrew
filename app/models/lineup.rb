class Lineup < ActiveRecord::Base
	attr_accessible :boat_id, :boat_size, :name

	#Relationships
	belongs_to :boat
	has_many :users, :through => :user_lineups

	#Scopes

	#Constants

	#Methods

	def boatsize
		return self.boat.name
	end

	def size(params)
		if(params.boat)
        	return params.boat.boat_type
        end
    end


end
