class User < ActiveRecord::Base
  
  attr_accessible :name, :oauth_expires_at, :oauth_token, :provider, :uid
  
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["user_info"]["name"]
    end
  end

end

  
