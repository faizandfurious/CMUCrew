class Boat < ActiveRecord::Base
	attr_accessible :name, :boat_type, :color, :model

    # Relationships
    # -----------------------------
	has_many :lineups
	
    # Scopes
    # -----------------------------

    # Validations
    # -----------------------------

	#Constants
	SIZES = ['1x', '2-', '2x','4+', '4x','8+']
  
  
    # Other methods
    # -----------------------------    


end
