class Board < ActiveRecord::Base
	belongs_to :user 
	#has_and_belongs_to_many :pins 
	has_many :pins 
end
