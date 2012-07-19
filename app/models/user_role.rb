class UserRole < ActiveRecord::Base

	#Relationships
  belongs_to :user
  belongs_to :role
  
  # Validations
  # -----------------------------
  validates_presence_of :role_id, :user_id
  
end
