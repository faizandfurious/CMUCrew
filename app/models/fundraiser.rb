class Fundraiser < ActiveRecord::Base
  attr_accessible :name, :fundraiser_type_id, :event_date, :location, :description
  
  belongs_to :fundraiser_type
  has_many :users, :through => :user_fundraisers
  
end
