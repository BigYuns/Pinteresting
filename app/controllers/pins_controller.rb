class PinsController < ApplicationController
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
		@pin=Pin.new(board_params)
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

	end

		@board=Board.find params[:id]
		@board.destroy

		redirect_to user_boards_path 

	private
	def pin_params
			params.require(:pin).permit(:title, :description, :url, :likes)
		
	end

end
