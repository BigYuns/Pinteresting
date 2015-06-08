class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
<<<<<<< HEAD

  #attr_accessible :name
  has_many :boards
  has_many :pins, through: :boards 

=======
  has_many :boards
  
>>>>>>> 236044ed06d85d2750b48bd1e543b20e7ecd009e
end
