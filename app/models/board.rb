class Board < ActiveRecord::Base
<<<<<<< HEAD
	belongs_to :user 
	#has_and_belongs_to_many :pins 
	has_many :pins 
=======
  belongs_to :user
  has_many :pins
>>>>>>> 236044ed06d85d2750b48bd1e543b20e7ecd009e
end
