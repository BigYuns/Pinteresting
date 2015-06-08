class Pin < ActiveRecord::Base
<<<<<<< HEAD
	#has_and_belongs_to_many :boards 
	belongs_to :board
	belongs_to :user
=======
  belongs_to :user
  belongs_to :board
>>>>>>> 236044ed06d85d2750b48bd1e543b20e7ecd009e
end
