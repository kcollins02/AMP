class User < ActiveRecord::Base
  attr_accessible :crypted_password, :email, :password_salt, :persistence_token, :username, :password, :password_confirmation
  acts_as_authentic
end
