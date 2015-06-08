class BoardsController < ApplicationController
	def index
		@boards=Board.all
	end


	def show
		@user=current_user
		@board=Board.find params[:id]
		@pins=Pin.where(board_id:)
		

	end

	def create
		@user=current_user
		@board=current_user.boards.build(board_params)
		@board.user_id=@user.id

		if @board.save
			redirect_to user_board_path(current_user,@board)
		else
			render 'new'
		end
	end



	def edit
		@board=Board.find params[:id]
	end

	def new
		@board=Board.new 

	end

	def destroy
		@board=Board.find params[:id]
		@board.destroy

		redirect_to user_boards_path 
	end


	def update
		@board=current_user.boards.find(params[:id])
		if @board.update(board_params)
			redirect_to user_board_path(current_user,@board)
		else
			render 'edit'
		end
	end




	private
	def board_params
			params.require(:board).permit(:name, :description, :public)
		end
	



end
