class UserFundraiser < ActiveRecord::Base
  attr_accessible :user_id, :fundraiser_id
  
  belongs_to :fundraiser
  belongs_to :user
end
