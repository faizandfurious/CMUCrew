class Practice < ActiveRecord::Base
attr_accessible :date, :time, :workout_type_id, :location

# Relationships
# -----------------------------
has_many :lineups, :through => :practice_lineups
accepts_nested_attributes_for :lineups

belongs_to :workout_type


# Validations
# -----------------------------
validates_presence_of :date, :workout_type_id, :location
validates_uniqueness_of :date

#Scopes
# -----------------------------
scope :tomorrow, where("date = ?", DateTime.now)

#Constants
# -----------------------------
LOCATIONS = ["TRRA Boathouse", "Skibo Gymnasium"]
TIMES = ["5:30am", "5:45am", "6:00am", "6:15am"]

# Other methods
# -----------------------------  
def self.before8()
  	return(Time.now > (Time.now.midnight + 8.hours))
end


end