class Pin < ActiveRecord::Base
	#has_and_belongs_to_many :boards 
	belongs_to :board
	belongs_to :user
end
