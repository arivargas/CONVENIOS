class Identity < ActiveRecord::Base
  attr_accessible :email, :name
  attr_reader :password, :password_confirmation
  #attr_accessor :password, :password_confirmation
  
  validates_presence_of :name
  validates_uniqueness_of :email
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
end
