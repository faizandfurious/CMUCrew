class WorkoutType < ActiveRecord::Base
	attr_accessible :name, :description

	#Relationships
	has_many :practices

	#Scopes

	#Constants
	TYPES = {'1' => 'Cardiovascular', '2' => 'Steady State', '3' => 'Lift'}

end
