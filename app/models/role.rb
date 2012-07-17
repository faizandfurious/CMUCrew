class Role < ActiveRecord::Base

	#Relationships
	has_many :user_roles
	has_many :users, :through => :user_roles

	#Accessible attributes
	attr_accessible :name

end
