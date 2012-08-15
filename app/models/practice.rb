class Practice < ActiveRecord::Base
attr_accessible :date, :workout_type_id, :location

# Relationships
# -----------------------------
has_many :lineups, :through => :practice_lineups
accepts_nested_attributes_for :lineups

belongs_to :workout_type


# Validations
# -----------------------------
validates_presence_of :date, :workout_type_id, :location

#Scopes
# -----------------------------

#Constants
# -----------------------------
LOCATIONS = ["TRRA Boathouse", "Skibo Gymnasium"]
TIMES = ["5:30am", "5:45am", "6:00am", "6:15am"]

# Other methods
# -----------------------------  

def tomorrow
	if(self.date.tomorrow)
		return true
	end
end

end