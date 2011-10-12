class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :omniauthable
  # :registerable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, 
                  :first_name, :last_name, :facebook_id, :school_name
  
  def self.find_for_facebook_oauth(access_token, signed_in_resource=nil)
    data = access_token['extra']['user_hash']
    # logger.debug "Data received: #{data} School: #{data["education"][0]["school"]["name"]}"
    if user = User.find_by_email(data["email"])
      user
    else # Create a user with a stub password. 
      User.create(:email => data["email"], 
                  :facebook_id => data["id"],
                  :first_name => data["first_name"],
                  :last_name => data["last_name"],
                  :school_name => data["education"][0]["school"]["name"], 
                  :password => Devise.friendly_token[0,20]) 
    end
  end
  
  def full_name
    first_name + " " + last_name
  end
end
