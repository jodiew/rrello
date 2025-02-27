class BoardsController < ApplicationController
  before_action :set_board, only: [ :show, :edit, :update, :destroy ]
  def index
    @boards = Board.all
  end

  def show
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)

    if @board.save
      redirect_to board_path(@board), notice: "Board was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @board.update(board_params)
      redirect_to board_path(@board), notice: "Board was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @board.destroy
    redirect_to boards_path, notice: "Board was successfully destroyed."
  end

  private

  def set_board
    @board = Board.find(params[:id])
  end

  def board_params
    params.require(:board).permit(:title, :background)
  end
end
