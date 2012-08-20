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

  #Methods

  def self.completed(id_user)
    #Number in 0th position is tracker for completed fundraisers, 1st position is for future fundraisers
    count = [0, 0]
    @uf = UserFundraiser.all
    @uf.each do |uf|
      if (uf.user_id == id_user)
        #Fundraiser has been completed
        if uf.fundraiser.event_date < Date.today
          count[0] = count[0] + 1
        #Fundraiser is in the future
        else
          count[1] = count[1].to_i + 1
        end
      end
    end
    return count;
  end
   
end
