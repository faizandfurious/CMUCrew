class UserLineup < ActiveRecord::Base
	attr_accessible :user_id, :lineup_id, :seat

	#Relationships
	belongs_to :user
	belongs_to :lineup

	#Constants
	SEATS = {'0' => 'Coxswain', '1' => 'One Seat', '2' => 'Two Seat',  '3' => 'Three Seat', '4' => 'Four Seat', '5' => 'Five Seat', '6' => 'Six Seat', '7' => 'Seven Seat', '8' => 'Eight Seat' }

end
