class FundraiserType < ActiveRecord::Base
  attr_accessible :name
  
  has_many :fundraisers
  
end
