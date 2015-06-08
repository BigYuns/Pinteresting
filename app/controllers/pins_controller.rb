class PinsController < ApplicationController
<<<<<<< HEAD
	def index
		@pins=Pin.all 
	end

	def show
		@pin=Pin.find params[:id]
	end

	def edit
		@pin=Pin.find params[:id]
	end

	def update
		@pin=Pin.find params[:id]

		if @pin.update(pin_params)
			redirect_to @pin 

		else
			render 'edit'
		end

	end



	def new
		@pin=Pin.new 
	end


	def create
		@board=Board.find(params[:board_id])
		@pin=@board.pins.new(pin_params)
		if @pin.save
			redirect_to @pin
		else
			render 'new'
		end
	end

	def destroy
		@pin=Pin.find params[:id]
		@pin.destroy
		redirect_to pins_path 

=======
	def create
		@user=current_user
		@board=current_user.boards.find(params[:board_id])
		@pin=@board.pins.new(pins_params)
		@pin.user_id=@user.id
		if @pin.save
			redirect_to user_board_pin_path(current_user,@board.id,@pin.id)
		else
			render 'new'
		end
		
	end

	def show

		@pin=Pin.find params[:id]
		@user=@pin.user
		@board=@user.boards.find(params[:board_id])
		#@board=current_user.boards.find(params[:board_id])
		#@pin=@board.pins.find params[:id]





	end


	def index
		@board=current_user.boards.find(params[:board_id])
		@pins=@board.pins 
	end


	def edit
		@board=current_user.boards.find(params[:board_id])
		@pin=@board.pins.find params[:id]
	end


	def destroy
		@board=current_user.boards.find(params[:board_id])
		@pin=@board.pins.find params[:id]
		@pin.destroy
		redirect_to user_board_path(current_user,@board.id)
	end

	def new
		@board=current_user.boards.find(params[:board_id])
		@pin=@board.pins.new
	end

	def update 
		@board=current_user.boards.find(params[:board_id])
		@pin=@board.pins.find params[:id]
		if @pin.update(pins_params)
			redirect_to user_board_pin_path(current_user,@board.id,@pin.id)
		else
			render 'edit'
		end
>>>>>>> 236044ed06d85d2750b48bd1e543b20e7ecd009e
	end


	private
<<<<<<< HEAD
	def pin_params
		params.require(:pin).permit(:title, :description, :url, :likes)		
=======
	def pins_params
		params.require(:pin).permit(:title, :description, :url, :likes, :subtitle, :url2, :url3, :url4)
>>>>>>> 236044ed06d85d2750b48bd1e543b20e7ecd009e
	end

end
