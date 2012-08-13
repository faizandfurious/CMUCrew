class Practice < ActiveRecord::Base
attr_accessible :date, :workout_type_id, :location

# Relationships
# -----------------------------
has_many :lineups, :through => :practice_lineups
belongs_to :workout_type


# Validations
# -----------------------------
validates_presence_of :date, :workout_type_id, :location

#Scopes
# -----------------------------

#Constants
# -----------------------------
LOCATIONS = {"TRRA Boathouse" => "TRRA Boathouse", "Skibo Gym" => "Skibo Gymnasium"}
TIMES = {"5:30am" => "5:30am", "6:00am" => "6:00am"}

# Other methods
# -----------------------------  

end