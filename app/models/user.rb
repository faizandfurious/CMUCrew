class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  ROLES = { :admin => "Admin",
            :fundraiser => "Fundraiser",
            :rower => "Rower" }
	#Relationships
	has_many :user_roles
	has_many :roles, :through => :user_roles
  has_many :fundraisers, :through => :user_fundraisers, :uniq => true
  has_many :lineups, :through => :user_lineups


	# Setup accessible (or protected) attributes for your model
	attr_accessible :first_name, :last_name, :username, :weight, :height, :rowing_side, :email, :phone, :year, :major, :password, :password_confirmation, :remember_me, :role_ids

	#Methods
  # Updates the list of roles available to the user
  def update_roles
    userRoles = UserRole.find( :all, :conditions => ['user_id = ?', self.id] )
    @roles = userRoles.collect! { |user_role| Role.find(:first, :conditions => ['id = ?', user_role.role_id]).name }
  end
  
  # Returns an array or roles
  def roles
    self.update_roles
    @roles
  end
  
  # Returns true if authorized_role is one of this user's authorized roles
  def role? authorized_role
    self.update_roles
    
    role_name = ROLES[authorized_role]
    self.roles.include?(role_name)
  end
  
  # Is this user an admin?
  def is_admin?
    self.role? :admin
  end

  # Is this user a fundraiser?
  def is_fundraiser?
    if self.role? :admin
      true
    else 
      self.role? :fundraiser
    end
  end

  # Is this user a rower?
  def is_rower?
    self.role? :rower
  end

end
