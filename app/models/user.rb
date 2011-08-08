class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable #, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :nickname, :email, :password, :password_confirmation, :remember_me
	
	#validates_uniqueness_of :nickname
	
	has_many :confessions

end
