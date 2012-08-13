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
	SIZES = {'1x' => 'Single', '2-' => 'Pair', '2x' => 'Double','4+' => 'Four', '4x' => 'Quad','8+' => 'Eight'}
  
  
    # Other methods
    # -----------------------------    

end
