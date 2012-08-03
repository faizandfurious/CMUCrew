class UserFundraiser < ActiveRecord::Base
  attr_accessible :user_id, :fundraiser_id
  
  # Relationships
  # -----------------------------
  belongs_to :fundraiser
  belongs_to :user

  validates_uniqueness_of :user_id, :scope => :fundraiser_id, :message => "You are already signed up for this fundraiser!"
  validates_presence_of :user_id, :fundraiser_id
  
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
