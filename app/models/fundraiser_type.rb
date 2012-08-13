class FundraiserType < ActiveRecord::Base
  attr_accessible :name

  #Relationships
  has_many :fundraisers

  #Scopes

  #Constants
  
end
