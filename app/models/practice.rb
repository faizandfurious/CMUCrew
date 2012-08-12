class Practice < ActiveRecord::Base

#Relationships
has_many :lineups, :through => :practice_lineups
belongs_to :workout_type

#Scopes

#Constants
LOCATIONS = {'1' => "TRRA Boathouse", '2' => "Skibo Gymnasium"}


end
