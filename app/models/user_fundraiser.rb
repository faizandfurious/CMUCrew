class UserFundraiser < ActiveRecord::Base
  attr_accessible :user_id, :fundraiser_id
  
  # Relationships
  # -----------------------------
  belongs_to :fundraiser
  belongs_to :user
  
  # Constants
  # ----------------------------
  
  # Callbacks
  # ----------------------------
  
  # Scopes
  # -----------------------------
  scope :current_user, lambda { |user| 
    where("user_id = ?", user.id)
    }
   
end
