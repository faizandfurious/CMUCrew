class Fundraiser < ActiveRecord::Base
    attr_accessible :name, :fundraiser_type_id, :event_date, :location, :description, :capacity, :total_count

    before_create :initialize_count
  
    validates_presence_of :name, :fundraiser_type_id, :event_date, :location, :capacity
    #Relationships
	# -----------------------------  
    belongs_to :fundraiser_type
    has_many :user_fundraisers, :dependent => :destroy
    has_many :users, :through => :user_fundraisers
  
    #Scopes
	# -----------------------------  

    #Constants
	# -----------------------------  
	
    TOTAL_REQUIRED = 5
	# Other methods
	# -----------------------------
    def initialize_count
        self.total_count = 0
    end


    def before_deadline?
        if (self.event_date > (Date.today + 3))
            return true
        else
            return false
        end
    end

    def update_count
        count = 0
        @uf = UserFundraiser.all
        @uf.each do |uf|
            if(uf.fundraiser_id == self.id)
                count = count + 1
            end
        end
        self.total_count = count
    end

    def reduce_count
        self.total_count = self.total_count - 1
    end

    def is_full?
        return(self.total_count >= self.capacity)
    end

    def signed_up?(user)
        @uf = UserFundraiser.get_members(self.id)
        @uf.each do |uf|
            if(uf.fundraiser_id == self.id)
                return true
            end
        end
        return false
    end


end
