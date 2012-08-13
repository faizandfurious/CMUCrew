class Fundraiser < ActiveRecord::Base
  attr_accessible :name, :fundraiser_type_id, :event_date, :location, :description, :capacity
  
    #Relationships
	# -----------------------------  
    belongs_to :fundraiser_type
    has_many :users, :through => :user_fundraisers, :uniq => true
  
    #Scopes
	# -----------------------------  

    #Constants
	# -----------------------------  
	
    TOTAL_REQUIRED = 5
	# Other methods
	# -----------------------------  


end
