class User < ActiveRecord::Base
	validates :title, :name, :username, :email, presence: true 
	validates :username, :email, uniqueness: true
end
